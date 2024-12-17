-- Câu hỏi và ví dụ về Triggers (101-110)

-- 101. Tạo một trigger để tự động cập nhật trường NgayCapNhat trong bảng ChuyenGia mỗi khi có sự thay đổi thông tin.
	ALTER TABLE ChuyenGia ADD NgayCapNhat DATETIME NULL;
	CREATE TRIGGER trg_UpdateNgayCapNhat
	ON ChuyenGia
	AFTER UPDATE
	AS
	BEGIN
		UPDATE ChuyenGia
		SET NgayCapNhat = GETDATE()
		WHERE MaChuyenGia IN (SELECT DISTINCT MaChuyenGia FROM Inserted);
	END;

-- 102. Tạo một trigger để ghi log mỗi khi có sự thay đổi trong bảng DuAn.
	CREATE TABLE DuAn_Log (
		LogID INT IDENTITY(1,1) PRIMARY KEY, -- ID tự động tăng
		MaDuAn INT, -- Mã dự án
		TenDuAn NVARCHAR(200), -- Tên dự án
		MaCongTy INT, -- Mã công ty
		NgayBatDau DATE, -- Ngày bắt đầu
		NgayKetThuc DATE, -- Ngày kết thúc
		TrangThai NVARCHAR(50), -- Trạng thái
		Action NVARCHAR(10), -- Hành động: INSERT, UPDATE, DELETE
		ChangeDate DATETIME DEFAULT GETDATE() -- Thời gian thay đổi
	);

	CREATE TRIGGER trg_LogChanges_DuAn
	ON DuAn
	AFTER INSERT, UPDATE, DELETE
	AS
	BEGIN
		-- Ghi log cho thao tác INSERT
		INSERT INTO DuAn_Log (MaDuAn, TenDuAn, MaCongTy, NgayBatDau, NgayKetThuc, TrangThai, Action)
		SELECT MaDuAn, TenDuAn, MaCongTy, NgayBatDau, NgayKetThuc, TrangThai, 'INSERT'
		FROM Inserted;

		-- Ghi log cho thao tác UPDATE
		INSERT INTO DuAn_Log (MaDuAn, TenDuAn, MaCongTy, NgayBatDau, NgayKetThuc, TrangThai, Action)
		SELECT MaDuAn, TenDuAn, MaCongTy, NgayBatDau, NgayKetThuc, TrangThai, 'UPDATE'
		FROM Inserted;

		-- Ghi log cho thao tác DELETE
		INSERT INTO DuAn_Log (MaDuAn, TenDuAn, MaCongTy, NgayBatDau, NgayKetThuc, TrangThai, Action)
		SELECT MaDuAn, TenDuAn, MaCongTy, NgayBatDau, NgayKetThuc, TrangThai, 'DELETE'
		FROM Deleted;
	END;



-- 103. Tạo một trigger để đảm bảo rằng một chuyên gia không thể tham gia vào quá 5 dự án cùng một lúc.
	CREATE TRIGGER trg_LimitProjects_PerExpert
	ON ChuyenGia_DuAn
	INSTEAD OF INSERT
	AS
	BEGIN
		-- Kiểm tra số lượng dự án mà chuyên gia đã tham gia
		IF EXISTS (
			SELECT MaChuyenGia
			FROM (
				SELECT i.MaChuyenGia, COUNT(cd.MaDuAn) AS TotalProjects
				FROM Inserted i
				LEFT JOIN ChuyenGia_DuAn cd ON i.MaChuyenGia = cd.MaChuyenGia
				GROUP BY i.MaChuyenGia
				HAVING COUNT(cd.MaDuAn) + 1 > 5
			) AS Violations
		)
		BEGIN
			-- Nếu vi phạm, không cho phép thêm bản ghi
			RAISERROR ('Một chuyên gia không thể tham gia vào quá 5 dự án cùng một lúc.', 16, 1);
			ROLLBACK TRANSACTION;
		END
		ELSE
		BEGIN
			-- Nếu không vi phạm, chèn dữ liệu vào bảng
			INSERT INTO ChuyenGia_DuAn (MaChuyenGia, MaDuAn)
			SELECT MaChuyenGia, MaDuAn
			FROM Inserted;
		END
	END;

-- 104. Tạo một trigger để tự động cập nhật số lượng nhân viên trong bảng CongTy mỗi khi có sự thay đổi trong bảng ChuyenGia.
    ALTER TABLE ChuyenGia
	ADD MaCongTy INT;

	CREATE TRIGGER trg_UpdateEmployeeCount
	ON ChuyenGia
	AFTER INSERT, DELETE, UPDATE
	AS
	BEGIN
		-- Cập nhật số lượng nhân viên cho các công ty liên quan khi thêm hoặc cập nhật chuyên gia
		IF EXISTS (SELECT 1 FROM Inserted)
		BEGIN
			UPDATE CongTy
			SET SoNhanVien = (
				SELECT COUNT(*)
				FROM ChuyenGia
				WHERE ChuyenGia.MaCongTy = CongTy.MaCongTy
			)
			WHERE MaCongTy IN (SELECT DISTINCT MaCongTy FROM Inserted);
		END;

		-- Cập nhật số lượng nhân viên cho các công ty liên quan khi xóa chuyên gia
		IF EXISTS (SELECT 1 FROM Deleted)
		BEGIN
			UPDATE CongTy
			SET SoNhanVien = (
				SELECT COUNT(*)
				FROM ChuyenGia
				WHERE ChuyenGia.MaCongTy = CongTy.MaCongTy
			)
			WHERE MaCongTy IN (SELECT DISTINCT MaCongTy FROM Deleted);
		END;
	END;

-- 105. Tạo một trigger để ngăn chặn việc xóa các dự án đã hoàn thành.
	CREATE TRIGGER trg_PreventDeleteCompletedProjects
	ON DuAn
	INSTEAD OF DELETE
	AS
	BEGIN
		-- Kiểm tra xem có dự án nào hoàn thành trong các dự án bị xóa không
		IF EXISTS (
			SELECT 1
			FROM Deleted
			WHERE TrangThai = 'HoanThanh'
		)
		BEGIN
			-- Ngăn chặn việc xóa và thông báo lỗi
			RAISERROR ('Không thể xóa các dự án đã hoàn thành.', 16, 1);
			ROLLBACK TRANSACTION;
		END
		ELSE
		BEGIN
			-- Cho phép xóa các dự án khác
			DELETE FROM DuAn
			WHERE MaDuAn IN (SELECT MaDuAn FROM Deleted);
		END
	END;


-- 106. Tạo một trigger để tự động cập nhật cấp độ kỹ năng của chuyên gia khi họ tham gia vào một dự án mới.
	CREATE TRIGGER trg_update_skill_level
	ON ChuyenGia_DuAn
	AFTER INSERT
	AS
	BEGIN
		-- Tăng cấp độ kỹ năng của chuyên gia khi tham gia vào dự án mới
		UPDATE ChuyenGia_KyNang
		SET CapDo = CapDo + 1
		FROM ChuyenGia_KyNang ckn
		JOIN INSERTED i ON ckn.MaChuyenGia = i.MaChuyenGia
		WHERE ckn.MaChuyenGia = i.MaChuyenGia;
	END;


-- 107. Tạo một trigger để ghi log mỗi khi có sự thay đổi cấp độ kỹ năng của chuyên gia.
	CREATE TABLE SkillLevelLog (
		LogID INT IDENTITY(1,1) PRIMARY KEY,
		MaChuyenGia INT,
		MaKyNang INT,
		OldCapDo INT,
		NewCapDo INT,
		ChangeDate DATETIME DEFAULT GETDATE()
	);

	CREATE TRIGGER trg_log_skill_level_change
	ON ChuyenGia_KyNang
	AFTER UPDATE
	AS
	BEGIN
		IF UPDATE(CapDo)
		BEGIN
			INSERT INTO SkillLevelLog (MaChuyenGia, MaKyNang, OldCapDo, NewCapDo)
			SELECT d.MaChuyenGia, d.MaKyNang, d.CapDo, i.CapDo
			FROM DELETED d
			JOIN INSERTED i ON d.MaChuyenGia = i.MaChuyenGia AND d.MaKyNang = i.MaKyNang
			WHERE d.CapDo <> i.CapDo;
		END
	END;

-- 108. Tạo một trigger để đảm bảo rằng ngày kết thúc của dự án luôn lớn hơn ngày bắt đầu.
	CREATE TRIGGER trg_ValidateProjectDates
	ON DuAn
	AFTER INSERT, UPDATE
	AS
	BEGIN
		IF EXISTS (
			SELECT 1
			FROM Inserted
			WHERE NgayKetThuc <= NgayBatDau
		)
		BEGIN
			RAISERROR ('Ngày kết thúc của dự án phải lớn hơn ngày bắt đầu.', 16, 1);
			ROLLBACK TRANSACTION;
		END;
	END;


-- 109. Tạo một trigger để tự động xóa các bản ghi liên quan trong bảng ChuyenGia_KyNang khi một kỹ năng bị xóa.
	CREATE TRIGGER trg_DeleteSkillRelations
	ON KyNang
	AFTER DELETE
	AS
	BEGIN
		DELETE FROM ChuyenGia_KyNang
		WHERE MaKyNang IN (
			SELECT MaKyNang
			FROM Deleted
		);
	END;


-- 110. Tạo một trigger để đảm bảo rằng một công ty không thể có quá 10 dự án đang thực hiện cùng một lúc.
	CREATE TRIGGER trg_LimitActiveProjects
	ON DuAn
	AFTER INSERT, UPDATE
	AS
	BEGIN
		IF EXISTS (
			SELECT MaCongTy
			FROM DuAn
			WHERE TrangThai = 'DangThucHien'
			GROUP BY MaCongTy
			HAVING COUNT(*) > 10
		)
		BEGIN
			RAISERROR ('Một công ty không thể có quá 10 dự án đang thực hiện cùng một lúc.', 16, 1);
			ROLLBACK TRANSACTION;
		END;
	END;

-- Câu hỏi và ví dụ về Triggers bổ sung (123-135)

-- 123. Tạo một trigger để tự động cập nhật lương của chuyên gia dựa trên cấp độ kỹ năng và số năm kinh nghiệm.\
	CREATE TRIGGER trg_update_luong
	ON ChuyenGia
	AFTER INSERT, UPDATE
	AS
	BEGIN
		-- Tính toán lương mới dựa trên cấp độ kỹ năng và số năm kinh nghiệm
		UPDATE cg
		SET cg.Luong = (SELECT SUM(ckn.CapDo * 1000 + cg.NamKinhNghiem * 500)
						FROM ChuyenGia_KyNang ckn
						WHERE ckn.MaChuyenGia = cg.MaChuyenGia)
		FROM ChuyenGia cg
		JOIN INSERTED i ON cg.MaChuyenGia = i.MaChuyenGia;
	END;


-- 124. Tạo một trigger để tự động gửi thông báo khi một dự án sắp đến hạn (còn 7 ngày).
	CREATE TRIGGER trg_ProjectDeadlineReminder
	ON DuAn
	AFTER INSERT, UPDATE
	AS
	BEGIN
		DECLARE @MaDuAn INT, @NgayKetThuc DATETIME;
		SELECT @MaDuAn = MaDuAn, @NgayKetThuc = NgayKetThuc FROM Inserted;
    
		IF DATEDIFF(DAY, GETDATE(), @NgayKetThuc) <= 7
		BEGIN
			INSERT INTO ThongBao (MaDuAn, NoiDung, NgayThongBao)
			VALUES (@MaDuAn, 'Dự án sắp đến hạn (7 ngày còn lại)', GETDATE());
		END
	END;

-- Tạo bảng ThongBao nếu chưa có
	CREATE TABLE ThongBao (
		MaThongBao INT IDENTITY PRIMARY KEY,
		MaDuAn INT,
		NoiDung NVARCHAR(255),
		NgayThongBao DATETIME
	);


-- 125. Tạo một trigger để ngăn chặn việc xóa hoặc cập nhật thông tin của chuyên gia đang tham gia dự án.
	CREATE TRIGGER trg_PreventDeleteOrUpdateChuyenGia
	ON ChuyenGia
	INSTEAD OF DELETE, UPDATE
	AS
	BEGIN
		IF EXISTS (
			SELECT 1 FROM DuAn_ChuyenGia WHERE MaChuyenGia IN (SELECT MaChuyenGia FROM Deleted)
		)
		BEGIN
			RAISERROR('Không thể xóa hoặc cập nhật chuyên gia đang tham gia dự án.', 16, 1);
			ROLLBACK TRANSACTION;
		END
		ELSE
		BEGIN
			DELETE FROM ChuyenGia WHERE MaChuyenGia IN (SELECT MaChuyenGia FROM Deleted);
		END
	END;

-- 126. Tạo một trigger để tự động cập nhật số lượng chuyên gia trong mỗi chuyên ngành.
	CREATE TRIGGER trg_update_thongke_chuyennganh
	ON ChuyenGia
	AFTER INSERT, UPDATE, DELETE
	AS
	BEGIN
		-- Xóa các bản ghi cũ trong bảng ThongKeChuyenNganh
		DELETE FROM ThongKeChuyenNganh;

		-- Cập nhật lại số lượng chuyên gia cho từng chuyên ngành
		INSERT INTO ThongKeChuyenNganh (ChuyenNganh, SoLuongChuyenGia)
		SELECT ChuyenNganh, COUNT(*) 
		FROM ChuyenGia
		GROUP BY ChuyenNganh;
	END;

-- Tạo bảng ThongKeChuyenNganh nếu chưa có
	CREATE TABLE ThongKeChuyenNganh (
		ChuyenNganh NVARCHAR(50) PRIMARY KEY,
		SoLuongChuyenGia INT
	);


-- 127. Tạo một trigger để tự động tạo bản sao lưu của dự án khi nó được đánh dấu là hoàn thành.
	CREATE TRIGGER trg_BackupCompletedProject
	ON DuAn
	AFTER UPDATE
	AS
	BEGIN
		IF EXISTS (SELECT 1 FROM Inserted WHERE TrangThai = 'HoanThanh')
		BEGIN
			INSERT INTO DuAnHoanThanh (MaDuAn, TenDuAn, NgayKetThuc)
			SELECT MaDuAn, TenDuAn, NgayKetThuc
			FROM Inserted
			WHERE TrangThai = 'HoanThanh';
		END
	END;

-- Tạo bảng DuAnHoanThanh nếu chưa có
	CREATE TABLE DuAnHoanThanh (
		MaDuAn INT,
		TenDuAn NVARCHAR(255),
		NgayKetThuc DATETIME
	);


-- 128. Tạo một trigger để tự động cập nhật điểm đánh giá trung bình của công ty dựa trên điểm đánh giá của các dự án.
	CREATE TRIGGER trg_update_diemdanhgia
	ON DuAn
	AFTER INSERT, UPDATE, DELETE
	AS
	BEGIN
		-- Cập nhật điểm đánh giá trung bình của công ty sau khi có sự thay đổi trong bảng DuAn
		DECLARE @MaCongTy INT;
    
		-- Lấy danh sách các mã công ty bị ảnh hưởng
		SELECT @MaCongTy = DISTINCT MaCongTy FROM INSERTED UNION SELECT DISTINCT MaCongTy FROM DELETED;

		-- Cập nhật điểm đánh giá trung bình cho từng công ty
		UPDATE CongTy
		SET DiemDanhGiaTrungBinh = (
			SELECT AVG(DiemDanhGia)
			FROM DuAn
			WHERE MaCongTy = CongTy.MaCongTy
		)
		WHERE MaCongTy = @MaCongTy;
	END;



-- 129. Tạo một trigger để tự động phân công chuyên gia vào dự án dựa trên kỹ năng và kinh nghiệm.
-- Giả định thêm cột vào bảng DuAn để xác định kỹ năng và kinh nghiệm yêu cầu
	ALTER TABLE DuAn
	ADD KyNangYeuCau INT, -- Mã kỹ năng cần thiết
		NamKinhNghiemYeuCau INT; -- Số năm kinh nghiệm cần thiết

-- Tạo trigger để tự động phân công chuyên gia
	CREATE TRIGGER PhanCongChuyenGia
	ON DuAn
	AFTER INSERT
	AS
	BEGIN
		-- Tự động phân công chuyên gia phù hợp cho dự án mới
		INSERT INTO ChuyenGia_DuAn (MaChuyenGia, MaDuAn, VaiTro, NgayThamGia)
		SELECT 
			CG.MaChuyenGia,
			i.MaDuAn,
			'Thành viên', -- Vai trò mặc định
			GETDATE() -- Ngày tham gia là ngày hiện tại
		FROM 
			ChuyenGia AS CG
		JOIN 
			ChuyenGia_KyNang AS CGK ON CG.MaChuyenGia = CGK.MaChuyenGia
		JOIN 
			inserted AS i ON CGK.MaKyNang = i.KyNangYeuCau
		WHERE 
			CG.NamKinhNghiem >= i.NamKinhNghiemYeuCau -- Đủ số năm kinh nghiệm
		ORDER BY 
			CG.NamKinhNghiem DESC -- Ưu tiên chuyên gia có kinh nghiệm cao nhất
		OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY; -- Giới hạn số chuyên gia phân công
	END;

-- 130. Tạo một trigger để tự động cập nhật trạng thái "bận" của chuyên gia khi họ được phân công vào dự án mới.
	ALTER TABLE ChuyenGia
	ADD TrangThai NVARCHAR(20) DEFAULT 'Rảnh'; -- Trạng thái mặc định là "Rảnh"

	CREATE TRIGGER CapNhatTrangThaiChuyenGia
	ON ChuyenGia_DuAn
	AFTER INSERT
	AS
	BEGIN
		-- Cập nhật trạng thái của chuyên gia thành "Bận"
		UPDATE ChuyenGia
		SET TrangThai = 'Bận'
		FROM ChuyenGia
		INNER JOIN inserted ON ChuyenGia.MaChuyenGia = inserted.MaChuyenGia;
	END;

-- 131. Tạo một trigger để ngăn chặn việc thêm kỹ năng trùng lặp cho một chuyên gia.
	CREATE TRIGGER NgChanKyNangTrungLap
	ON ChuyenGia_KyNang
	INSTEAD OF INSERT
	AS
	BEGIN
		-- Kiểm tra nếu có kỹ năng trùng lặp trong dữ liệu mới
		IF EXISTS (
			SELECT 1
			FROM ChuyenGia_KyNang AS CK
			INNER JOIN inserted AS i
			ON CK.MaChuyenGia = i.MaChuyenGia AND CK.MaKyNang = i.MaKyNang
		)
		BEGIN
			-- Thông báo lỗi nếu có trùng lặp
			RAISERROR ('Không thể thêm kỹ năng trùng lặp cho chuyên gia.', 16, 1);
			ROLLBACK TRANSACTION;
			RETURN;
		END;

		-- Thêm dữ liệu nếu không trùng lặp
		INSERT INTO ChuyenGia_KyNang (MaChuyenGia, MaKyNang, CapDo)
		SELECT MaChuyenGia, MaKyNang, CapDo
		FROM inserted;
	END;

-- 132. Tạo một trigger để tự động tạo báo cáo tổng kết khi một dự án kết thúc.
	CREATE TABLE BaoCaoDuAn (
		MaBaoCao INT IDENTITY(1,1) PRIMARY KEY,
		MaDuAn INT,
		TenDuAn NVARCHAR(200),
		NgayKetThuc DATE,
		TongChuyenGia INT,
		MoTa NVARCHAR(MAX),
		FOREIGN KEY (MaDuAn) REFERENCES DuAn(MaDuAn)
	);

	CREATE TRIGGER TaoBaoCaoDuAn
	ON DuAn
	AFTER UPDATE
	AS
	BEGIN
		-- Kiểm tra nếu trạng thái được cập nhật thành "Hoàn thành"
		IF EXISTS (
			SELECT 1
			FROM inserted AS i
			WHERE i.TrangThai = 'Hoàn thành'
			  AND i.TrangThai <> (SELECT TrangThai FROM deleted WHERE MaDuAn = i.MaDuAn)
		)
		BEGIN
			-- Tạo báo cáo cho dự án vừa hoàn thành
			INSERT INTO BaoCaoDuAn (MaDuAn, TenDuAn, NgayKetThuc, TongChuyenGia, MoTa)
			SELECT 
				i.MaDuAn,
				i.TenDuAn,
				i.NgayKetThuc,
				(SELECT COUNT(*) 
				 FROM ChuyenGia_DuAn 
				 WHERE ChuyenGia_DuAn.MaDuAn = i.MaDuAn) AS TongChuyenGia,
				'Dự án đã hoàn thành thành công.' -- Mô tả mặc định
			FROM inserted AS i;
		END;
	END;


-- 133. Tạo một trigger để tự động cập nhật thứ hạng của công ty dựa trên số lượng dự án hoàn thành và điểm đánh giá.
	ALTER TABLE CongTy ADD ThuHang NVARCHAR(50);
	ALTER TABLE DuAn ADD DiemDanhGia FLOAT;

	CREATE TRIGGER CapNhatThuHangCongTy
	ON DuAn
	AFTER UPDATE
	AS
	BEGIN
		-- Kiểm tra nếu trạng thái dự án thay đổi thành "Hoàn thành"
		IF EXISTS (
			SELECT 1
			FROM inserted AS i
			WHERE i.TrangThai = 'Hoàn thành'
			  AND i.TrangThai <> (SELECT TrangThai FROM deleted WHERE MaDuAn = i.MaDuAn)
		)
		BEGIN
			-- Cập nhật thứ hạng công ty dựa trên số dự án hoàn thành và điểm đánh giá trung bình
			UPDATE CT
			SET ThuHang = (
				SELECT TOP 1 RowNum
				FROM (
					SELECT MaCongTy,
						   COUNT(*) AS SoDuAnHoanThanh,
						   AVG(DiemDanhGia) AS DiemDanhGiaTrungBinh,
						   ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC, AVG(DiemDanhGia) DESC) AS RowNum
					FROM DuAn
					WHERE TrangThai = 'Hoàn thành'
					GROUP BY MaCongTy
				) AS RankedCompanies
				WHERE RankedCompanies.MaCongTy = CT.MaCongTy
			)
			FROM CongTy AS CT
			WHERE CT.MaCongTy IN (
				SELECT DISTINCT MaCongTy
				FROM inserted
			);
		END;
	END;


-- 133. (tiếp tục) Tạo một trigger để tự động cập nhật thứ hạng của công ty dựa trên số lượng dự án hoàn thành và điểm đánh giá.
	CREATE TRIGGER CapNhatThuHangCongTy_2
	ON DuAn
	AFTER UPDATE
	AS
	BEGIN
		-- Kiểm tra nếu trạng thái dự án thay đổi thành "Hoàn thành"
		IF EXISTS (
			SELECT 1
			FROM inserted AS i
			WHERE i.TrangThai = 'Hoàn thành'
			  AND i.TrangThai <> (SELECT TrangThai FROM deleted WHERE MaDuAn = i.MaDuAn)
		)
		BEGIN
			-- Cập nhật thứ hạng công ty dựa trên số lượng dự án hoàn thành và điểm đánh giá trung bình
			UPDATE CT
			SET ThuHang = (
				SELECT TOP 1 RowNum
				FROM (
					SELECT MaCongTy,
						   COUNT(*) AS SoDuAnHoanThanh,
						   AVG(DiemDanhGia) AS DiemDanhGiaTrungBinh,
						   ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC, AVG(DiemDanhGia) DESC) AS RowNum
					FROM DuAn
					WHERE TrangThai = 'Hoàn thành'
					GROUP BY MaCongTy
				) AS RankedCompanies
				WHERE RankedCompanies.MaCongTy = CT.MaCongTy
			)
			FROM CongTy AS CT
			WHERE CT.MaCongTy IN (
				SELECT DISTINCT MaCongTy
				FROM inserted
			);
		END;
	END;


-- 134. Tạo một trigger để tự động gửi thông báo khi một chuyên gia được thăng cấp (dựa trên số năm kinh nghiệm).
	ALTER TABLE ChuyenGia
	ADD CapBac NVARCHAR(50);
	ALTER TABLE THONGBAO
	ADD MaChuyenGia INT;

	CREATE TRIGGER ThongBaoThangCap
	ON ChuyenGia
	AFTER UPDATE
	AS
	BEGIN
		-- Kiểm tra nếu có sự thay đổi về số năm kinh nghiệm
		IF EXISTS (
			SELECT 1
			FROM inserted AS i
			JOIN deleted AS d ON i.MaChuyenGia = d.MaChuyenGia
			WHERE i.NamKinhNghiem > d.NamKinhNghiem
		)
		BEGIN
			-- Lấy thông tin từ bảng inserted
			DECLARE @MaChuyenGia INT, @NamKinhNghiem INT, @CapBac NVARCHAR(50);

			-- Truy vấn thông tin từ bảng inserted
			SELECT @MaChuyenGia = i.MaChuyenGia, @NamKinhNghiem = i.NamKinhNghiem, @CapBac = i.CapBac
			FROM inserted AS i;

			-- Kiểm tra và thăng cấp cho chuyên gia
			IF @NamKinhNghiem >= 5 AND @CapBac = 'Junior'
			BEGIN
				-- Thăng cấp lên 'Senior'
				UPDATE ChuyenGia
				SET CapBac = 'Senior'
				WHERE MaChuyenGia = @MaChuyenGia;

				-- Tạo thông báo về việc thăng cấp
				INSERT INTO ThongBao (MaChuyenGia, NoiDung, NgayThongBao)
				VALUES (@MaChuyenGia, 'Chuyên gia đã được thăng cấp lên Senior!', GETDATE());
			END
			ELSE IF @NamKinhNghiem >= 10 AND @CapBac = 'Senior'
			BEGIN
				-- Thăng cấp lên 'Lead'
				UPDATE ChuyenGia
				SET CapBac = 'Lead'
				WHERE MaChuyenGia = @MaChuyenGia;

				-- Tạo thông báo về việc thăng cấp
				INSERT INTO ThongBao (MaChuyenGia, NoiDung, NgayThongBao)
				VALUES (@MaChuyenGia, 'Chuyên gia đã được thăng cấp lên Lead!', GETDATE());
			END
		END
	END;


-- 135. Tạo một trigger để tự động cập nhật trạng thái "khẩn cấp" cho dự án khi thời gian còn lại ít hơn 10% tổng thời gian dự án.
	CREATE TRIGGER CapNhatTrangThaiKharnCap
	ON DuAn
	AFTER UPDATE
	AS
	BEGIN
		DECLARE @MaDuAn INT, @NgayBatDau DATE, @NgayKetThuc DATE, @TrangThai NVARCHAR(50);
		DECLARE @ThoiGianConLai INT, @TongThoiGian INT, @PhanTramConLai DECIMAL(5,2);

		-- Lấy thông tin dự án từ bảng inserted (bảng chứa giá trị mới sau khi update)
		SELECT @MaDuAn = MaDuAn, @NgayBatDau = NgayBatDau, @NgayKetThuc = NgayKetThuc, @TrangThai = TrangThai
		FROM inserted;

		-- Tính toán tổng thời gian của dự án (tính bằng ngày)
		SET @TongThoiGian = DATEDIFF(DAY, @NgayBatDau, @NgayKetThuc);

		-- Tính toán thời gian còn lại
		SET @ThoiGianConLai = DATEDIFF(DAY, GETDATE(), @NgayKetThuc);

		-- Tính phần trăm thời gian còn lại
		SET @PhanTramConLai = (@ThoiGianConLai * 100.0) / @TongThoiGian;

		-- Kiểm tra nếu thời gian còn lại ít hơn 10%
		IF @PhanTramConLai < 10 AND @TrangThai <> 'Khẩn cấp'
		BEGIN
			-- Cập nhật trạng thái dự án thành 'Khẩn cấp'
			UPDATE DuAn
			SET TrangThai = 'Khẩn cấp'
			WHERE MaDuAn = @MaDuAn;
		END
	END;


-- 136. Tạo một trigger để tự động cập nhật số lượng dự án đang thực hiện của mỗi chuyên gia.
	ALTER TABLE ChuyenGia
	ADD SoLuongDuAn INT DEFAULT 0;

	CREATE TRIGGER CapNhatSoLuongDuAn
	ON ChuyenGia_DuAn
	AFTER INSERT, DELETE
	AS
	BEGIN
		DECLARE @MaChuyenGia INT;

		-- Cập nhật số lượng dự án khi có chuyên gia được phân công (INSERT)
		IF EXISTS (SELECT 1 FROM inserted)
		BEGIN
			-- Lấy MaChuyenGia từ bảng inserted
			SELECT @MaChuyenGia = MaChuyenGia FROM inserted;

			-- Cập nhật số lượng dự án của chuyên gia
			UPDATE ChuyenGia
			SET SoLuongDuAn = (SELECT COUNT(*) FROM ChuyenGia_DuAn WHERE MaChuyenGia = @MaChuyenGia)
			WHERE MaChuyenGia = @MaChuyenGia;
		END

		-- Cập nhật số lượng dự án khi có chuyên gia bị gỡ khỏi dự án (DELETE)
		IF EXISTS (SELECT 1 FROM deleted)
		BEGIN
			-- Lấy MaChuyenGia từ bảng deleted
			SELECT @MaChuyenGia = MaChuyenGia FROM deleted;

			-- Cập nhật số lượng dự án của chuyên gia
			UPDATE ChuyenGia
			SET SoLuongDuAn = (SELECT COUNT(*) FROM ChuyenGia_DuAn WHERE MaChuyenGia = @MaChuyenGia)
			WHERE MaChuyenGia = @MaChuyenGia;
		END
	END;

-- 137. Tạo một trigger để tự động tính toán và cập nhật tỷ lệ thành công của công ty dựa trên số dự án hoàn thành và tổng số dự án.
	ALTER TABLE CongTy
	ADD TyLeThanhCong DECIMAL(5, 2) DEFAULT 0;

	CREATE TRIGGER CapNhatTyLeThanhCong
	ON DuAn
	AFTER UPDATE
	AS
	BEGIN
		DECLARE @MaCongTy INT;
		DECLARE @SoDuAnHoanThanh INT;
		DECLARE @TongSoDuAn INT;
		DECLARE @TyLeThanhCong DECIMAL(5, 2);

		-- Lấy MaCongTy từ bảng inserted
		SELECT @MaCongTy = MaCongTy FROM inserted;

		-- Tính số lượng dự án hoàn thành (trạng thái 'Hoàn thành')
		SELECT @SoDuAnHoanThanh = COUNT(*) 
		FROM DuAn 
		WHERE MaCongTy = @MaCongTy AND TrangThai = 'Hoàn thành';

		-- Tính tổng số dự án của công ty
		SELECT @TongSoDuAn = COUNT(*) 
		FROM DuAn 
		WHERE MaCongTy = @MaCongTy;

		-- Tính tỷ lệ thành công (nếu tổng số dự án > 0 để tránh chia cho 0)
		IF @TongSoDuAn > 0
		BEGIN
			SET @TyLeThanhCong = (@SoDuAnHoanThanh * 100.0) / @TongSoDuAn;
		END
		ELSE
		BEGIN
			SET @TyLeThanhCong = 0;  -- Trường hợp không có dự án, tỷ lệ thành công là 0
		END

		-- Cập nhật tỷ lệ thành công của công ty vào bảng CongTy
		UPDATE CongTy
		SET TyLeThanhCong = @TyLeThanhCong
		WHERE MaCongTy = @MaCongTy;
	END;

-- 138. Tạo một trigger để tự động ghi log mỗi khi có thay đổi trong bảng lương của chuyên gia.
CREATE TABLE LogLuongChuyenGia (
    MaChuyenGia INT,
    HoTen NVARCHAR(100),
    LuongCu DECIMAL(18, 2),
    LuongMoi DECIMAL(18, 2),
    ThoiGianThayDoi DATETIME DEFAULT GETDATE(),
    HanhDong NVARCHAR(50)
);

	CREATE TRIGGER GhiLogLuongChuyenGia
	ON ChuyenGia
	AFTER UPDATE
	AS
	BEGIN
		DECLARE @MaChuyenGia INT;
		DECLARE @HoTen NVARCHAR(100);
		DECLARE @LuongCu DECIMAL(18, 2);
		DECLARE @LuongMoi DECIMAL(18, 2);

		-- Lấy dữ liệu từ bảng inserted và deleted
		SELECT @MaChuyenGia = MaChuyenGia, 
			   @HoTen = HoTen, 
			   @LuongCu = Luong
		FROM deleted;
    
		SELECT @LuongMoi = Luong 
		FROM inserted;

		-- Ghi log nếu lương thay đổi
		IF @LuongCu <> @LuongMoi
		BEGIN
			INSERT INTO LogLuongChuyenGia (MaChuyenGia, HoTen, LuongCu, LuongMoi, HanhDong)
			VALUES (@MaChuyenGia, @HoTen, @LuongCu, @LuongMoi, 'UPDATE');
		END
	END;


-- 139. Tạo một trigger để tự động cập nhật số lượng chuyên gia cấp cao trong mỗi công ty.
	ALTER TABLE CongTy
	ADD SoLuongChuyenGiaCapCao INT DEFAULT 0;

	CREATE TRIGGER CapNhatSoLuongChuyenGiaCapCao
	ON ChuyenGia
	AFTER INSERT, UPDATE, DELETE
	AS
	BEGIN
		DECLARE @MaCongTy INT;
		DECLARE @SoLuongChuyenGiaCapCao INT;

		-- Cập nhật số lượng chuyên gia cấp cao sau khi thêm, sửa, hoặc xóa chuyên gia
		-- Đối với INSERT và UPDATE
		IF EXISTS (SELECT * FROM inserted)
		BEGIN
			-- Lấy mã công ty từ bảng inserted
			SELECT @MaCongTy = MaCongTy FROM inserted;

			-- Tính số lượng chuyên gia cấp cao trong công ty
			SELECT @SoLuongChuyenGiaCapCao = COUNT(*)
			FROM ChuyenGia
			WHERE MaCongTy = @MaCongTy AND NamKinhNghiem >= 5;
        
			-- Cập nhật số lượng chuyên gia cấp cao vào bảng CongTy
			UPDATE CongTy
			SET SoLuongChuyenGiaCapCao = @SoLuongChuyenGiaCapCao
			WHERE MaCongTy = @MaCongTy;
		END

		-- Đối với DELETE
		IF EXISTS (SELECT * FROM deleted)
		BEGIN
			-- Lấy mã công ty từ bảng deleted
			SELECT @MaCongTy = MaCongTy FROM deleted;

			-- Tính số lượng chuyên gia cấp cao trong công ty
			SELECT @SoLuongChuyenGiaCapCao = COUNT(*)
			FROM ChuyenGia
			WHERE MaCongTy = @MaCongTy AND NamKinhNghiem >= 5;
        
			-- Cập nhật số lượng chuyên gia cấp cao vào bảng CongTy
			UPDATE CongTy
			SET SoLuongChuyenGiaCapCao = @SoLuongChuyenGiaCapCao
			WHERE MaCongTy = @MaCongTy;
		END
	END;

-- 140. Tạo một trigger để tự động cập nhật trạng thái "cần bổ sung nhân lực" cho dự án khi số lượng chuyên gia tham gia ít hơn yêu cầu.
	ALTER TABLE DuAn
	ADD SoLuongChuyenGiaYeuCau INT;

	CREATE TRIGGER CapNhatTrangThaiDuAn
	ON ChuyenGia_DuAn
	AFTER INSERT, DELETE
	AS
	BEGIN
		DECLARE @MaDuAn INT;
		DECLARE @SoLuongChuyenGiaYeuCau INT;
		DECLARE @SoLuongChuyenGiaThamGia INT;

		-- Cập nhật trạng thái dự án sau khi có thay đổi trong bảng ChuyenGia_DuAn
		-- Đối với INSERT
		IF EXISTS (SELECT * FROM inserted)
		BEGIN
			-- Lấy mã dự án từ bảng inserted
			SELECT @MaDuAn = MaDuAn FROM inserted;

			-- Lấy số lượng chuyên gia yêu cầu từ bảng DuAn
			SELECT @SoLuongChuyenGiaYeuCau = SoLuongChuyenGiaYeuCau
			FROM DuAn
			WHERE MaDuAn = @MaDuAn;

			-- Tính số lượng chuyên gia tham gia vào dự án
			SELECT @SoLuongChuyenGiaThamGia = COUNT(*)
			FROM ChuyenGia_DuAn
			WHERE MaDuAn = @MaDuAn;

			-- Kiểm tra nếu số lượng chuyên gia tham gia ít hơn yêu cầu
			IF @SoLuongChuyenGiaThamGia < @SoLuongChuyenGiaYeuCau
			BEGIN
				-- Cập nhật trạng thái dự án thành 'Cần bổ sung nhân lực'
				UPDATE DuAn
				SET TrangThai = 'Cần bổ sung nhân lực'
				WHERE MaDuAn = @MaDuAn;
			END
		END

		-- Đối với DELETE
		IF EXISTS (SELECT * FROM deleted)
		BEGIN
			-- Lấy mã dự án từ bảng deleted
			SELECT @MaDuAn = MaDuAn FROM deleted;

			-- Lấy số lượng chuyên gia yêu cầu từ bảng DuAn
			SELECT @SoLuongChuyenGiaYeuCau = SoLuongChuyenGiaYeuCau
			FROM DuAn
			WHERE MaDuAn = @MaDuAn;

			-- Tính số lượng chuyên gia tham gia vào dự án
			SELECT @SoLuongChuyenGiaThamGia = COUNT(*)
			FROM ChuyenGia_DuAn
			WHERE MaDuAn = @MaDuAn;

			-- Kiểm tra nếu số lượng chuyên gia tham gia ít hơn yêu cầu
			IF @SoLuongChuyenGiaThamGia < @SoLuongChuyenGiaYeuCau
			BEGIN
				-- Cập nhật trạng thái dự án thành 'Cần bổ sung nhân lực'
				UPDATE DuAn
				SET TrangThai = 'Cần bổ sung nhân lực'
				WHERE MaDuAn = @MaDuAn;
			END
		END
	END;


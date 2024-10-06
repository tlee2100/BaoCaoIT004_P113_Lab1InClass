<<<<<<< HEAD
﻿				--BaiTap1--
			 --QuanLyBanHang--
			 --Nhap du lieu--


		--Nhap du lieu KHACHANG--
			SET DATEFORMAT DMY
		INSERT INTO KHACHHANG VALUES('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451','22/10/1960','22/07/2006',13060000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478','03/04/1974','30/07/2006',280000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266','12/06/1980','08/05/2006',3860000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476','09/03/1965','10/02/2006',250000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108','10/03/1950','28/10/2006',21000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738','31/12/1981','24/11/2006',915000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565','06/04/1971','12/01/2006',12500, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756','10/01/1971','13/12/2006',365000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763','03/09/1979','14/01/2007',70000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904','02/05/1983','16/01/2007',67500, 'Vip')


		--Nhap du lieu cho NHANVIEN--
		INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','927345678','13/04/2006')
		INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','987567390','21/04/2006')
		INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','997047382','27/04/2006')
		INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','913758498','24/06/2006')
		INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh','918590387','20/07/2006')

		-- Nhập dữ liệu cho SANPHAM
		INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
		INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
		INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
		INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
		INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
		INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
		INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
		INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
		INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
		INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
		INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
		INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
		INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
		INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
		INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
		INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
		INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
		INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
		INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
		INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
		INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
		INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
		INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
		INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)

		-- Nhập dữ liệu cho HOADON
		INSERT INTO HOADON VALUES(1001,'23/07/2006','KH01','NV01',320000)
		INSERT INTO HOADON VALUES(1002,'12/08/2006','KH01','NV02',840000)
		INSERT INTO HOADON VALUES(1003,'23/08/2006','KH02','NV01',100000)
		INSERT INTO HOADON VALUES(1004,'01/09/2006','KH02','NV01',180000)
		INSERT INTO HOADON VALUES(1005,'20/10/2006','KH01','NV02',3800000)
		INSERT INTO HOADON VALUES(1006,'16/10/2006','KH01','NV03',2430000)
		INSERT INTO HOADON VALUES(1007,'28/10/2006','KH03','NV03',510000)
		INSERT INTO HOADON VALUES(1008,'28/10/2006','KH01','NV03',440000)
		INSERT INTO HOADON VALUES(1009,'28/10/2006','KH03','NV04',200000)
		INSERT INTO HOADON VALUES(1010,'01/11/2006','KH01','NV01',5200000)
		INSERT INTO HOADON VALUES(1011,'04/11/2006','KH04','NV03',250000)
		INSERT INTO HOADON VALUES(1012,'30/11/2006','KH05','NV03',21000)
		INSERT INTO HOADON VALUES(1013,'12/12/2006','KH06','NV01',5000)
		INSERT INTO HOADON VALUES(1014,'31/12/2006','KH03','NV02',3150000)
		INSERT INTO HOADON VALUES(1015,'01/01/2007','KH06','NV01',910000)
		INSERT INTO HOADON VALUES(1016,'01/01/2007','KH07','NV02',12500)
		INSERT INTO HOADON VALUES(1017,'02/01/2007','KH08','NV03',35000)
		INSERT INTO HOADON VALUES(1018,'13/01/2007','KH08','NV03',330000)
		INSERT INTO HOADON VALUES(1019,'13/01/2007','KH01','NV03',30000)
		INSERT INTO HOADON VALUES(1020,'14/01/2007','KH09','NV04',70000)
		INSERT INTO HOADON VALUES(1021,'16/01/2007','KH10','NV03',67500)
		INSERT INTO HOADON VALUES(1022,'16/01/2007',Null,'NV03',7000)
		INSERT INTO HOADON VALUES(1023,'17/01/2007',Null,'NV01',330000)

		-- Nhập dữ liệu cho CTHD--
		INSERT INTO CTHD VALUES(1001,'TV02',10)
		INSERT INTO CTHD VALUES(1001,'ST01',5)
		INSERT INTO CTHD VALUES(1001,'BC01',5)
		INSERT INTO CTHD VALUES(1001,'BC02',10)
		INSERT INTO CTHD VALUES(1001,'ST08',10)
		INSERT INTO CTHD VALUES(1002,'BC04',20)
		INSERT INTO CTHD VALUES(1002,'BB01',20)
		INSERT INTO CTHD VALUES(1002,'BB02',20)
		INSERT INTO CTHD VALUES(1003,'BB03',10)
		INSERT INTO CTHD VALUES(1004,'TV01',20)
		INSERT INTO CTHD VALUES(1004,'TV02',10)
		INSERT INTO CTHD VALUES(1004,'TV03',10)
		INSERT INTO CTHD VALUES(1004,'TV04',10)
		INSERT INTO CTHD VALUES(1005,'TV05',50)
		INSERT INTO CTHD VALUES(1005,'TV06',50)
		INSERT INTO CTHD VALUES(1006,'TV07',20)
		INSERT INTO CTHD VALUES(1006,'ST01',30)
		INSERT INTO CTHD VALUES(1006,'ST02',10)
		INSERT INTO CTHD VALUES(1007,'ST03',10)
		INSERT INTO CTHD VALUES(1008,'ST04',8)
		INSERT INTO CTHD VALUES(1009,'ST05',10)
		INSERT INTO CTHD VALUES(1010,'TV07',50)
		INSERT INTO CTHD VALUES(1010,'ST07',50)
		INSERT INTO CTHD VALUES(1010,'ST08',100)
		INSERT INTO CTHD VALUES(1010,'ST04',50)
		INSERT INTO CTHD VALUES(1010,'TV03',100)
		INSERT INTO CTHD VALUES(1011,'ST06',50)
		INSERT INTO CTHD VALUES(1012,'ST07',3)
		INSERT INTO CTHD VALUES(1013,'ST08',5)
		INSERT INTO CTHD VALUES(1014,'BC02',80)
		INSERT INTO CTHD VALUES(1014,'BB02',100)
		INSERT INTO CTHD VALUES(1014,'BC04',60)
		INSERT INTO CTHD VALUES(1014,'BB01',50)
		INSERT INTO CTHD VALUES(1015,'BB02',30)
		INSERT INTO CTHD VALUES(1015,'BB03',7)
		INSERT INTO CTHD VALUES(1016,'TV01',5)
		INSERT INTO CTHD VALUES(1017,'TV02',1)
		INSERT INTO CTHD VALUES(1017,'TV03',1)
		INSERT INTO CTHD VALUES(1017,'TV04',5)
		INSERT INTO CTHD VALUES(1018,'ST04',6)
		INSERT INTO CTHD VALUES(1019,'ST05',1)
		INSERT INTO CTHD VALUES(1019,'ST06',2)
		INSERT INTO CTHD VALUES(1020,'ST07',10)
		INSERT INTO CTHD VALUES(1021,'ST08',5)
		INSERT INTO CTHD VALUES(1021,'TV01',7)
		INSERT INTO CTHD VALUES(1021,'TV02',10)
		INSERT INTO CTHD VALUES(1022,'ST07',1)
		INSERT INTO CTHD VALUES(1023,'ST04',6)


				--BaiTap2--
			--Quan Ly Giao Vu--

				-- Nhập dữ liệu cho KHOA --
		insert into KHOA values('KHMT','Khoa hoc may tinh','6/7/2005','GV01')
		insert into KHOA values('HTTT','He thong thong tin','6/7/2005','GV02')
		insert into KHOA values('CNPM','Cong nghe phan mem','6/7/2005','GV04')
		insert into KHOA values('MTT','Mang va truyen thong','10/20/2005','GV03')
		insert into KHOA values('KTMT','Ky thuat may tinh','12/20/2005','GV13')

		-- Nhập dữ liệu cho GIAOVIEN --
		insert into GIAOVIEN values('GV01','Ho Thanh Son','PTS','GS','Nam','5/2/1950','1/11/2004',5.00,2250000,'KHMT')
		insert into GIAOVIEN values('GV02','Tran Tam Thanh','TS','PGS','Nam','12/17/1965','4/20/2004',4.50,2025000,'HTTT')
		insert into GIAOVIEN values('GV03','Do Nghiem Phung','TS','GS','Nu','8/1/1950','9/23/2004',4.00,1800000,'CNPM')
		insert into GIAOVIEN values('GV04','Tran Nam Son','TS','PGS','Nam','2/22/1961','1/12/2005',4.50,2025000,'KTMT')
		insert into GIAOVIEN values('GV05','Mai Thanh Danh','ThS','GV','Nam','3/12/1958','1/12/2005',3.00,1350000,'HTTT')
		insert into GIAOVIEN values('GV06','Tran Doan Hung','TS','GV','Nam','3/11/1953','1/12/2005',4.50,2025000,'KHMT')
		insert into GIAOVIEN values('GV07','Nguyen Minh Tien','ThS','GV','Nam','11/23/1971','3/1/2005',4.00,1800000,'KHMT')
		insert into GIAOVIEN values('GV08','Le Thi Tran','KS','','Nu','3/26/1974','3/1/2005',1.69,760500,'KHMT')
		insert into GIAOVIEN values('GV09','Nguyen To Lan','ThS','GV','Nu','12/31/1966','3/1/2005',4.00,1800000,'HTTT')
		insert into GIAOVIEN values('GV10','Le Tran Anh Loan','KS','','Nu','7/17/1972','3/1/2005',1.86,837000,'CNPM')
		insert into GIAOVIEN values('GV11','Ho Thanh Tung','CN','GV','Nam','1/12/1980','5/15/2005',2.67,1201500,'MTT')
		insert into GIAOVIEN values('GV12','Tran Van Anh','CN','','Nu','3/29/1981','5/15/2005',1.69,760500,'CNPM')
		insert into GIAOVIEN values('GV13','Nguyen Linh Dan','CN','','Nu','5/23/1980','5/15/2005',1.69,760500,'KTMT')
		insert into GIAOVIEN values('GV14','Truong Minh Chau','ThS','GV','Nu','11/30/1976','5/15/2005',3.00,1350000,'MTT')
		insert into GIAOVIEN values('GV15','Le Ha Thanh','ThS','GV','Nam','5/4/1978','5/15/2005',3.00,1350000,'KHMT')
 
		-- Nhập dữ liệu cho MONHOC --
		insert into MONHOC values('THDC','Tin hoc dai cuong',4,1,'KHMT')
		insert into MONHOC values('CTRR','Cau truc roi rac',5,0,'KHMT')
		insert into MONHOC values('CSDL','Co so du lieu',3,1,'HTTT')
		insert into MONHOC values('CTDLGT','Cau truc du lieu va giai thuat',3,1,'KHMT')
		insert into MONHOC values('PTTKTT','Phan tich thiet ke thuat toan',3,0,'KHMT')
		insert into MONHOC values('DHMT','Do hoa may tinh',3,1,'KHMT')
		insert into MONHOC values('KTMT','Kien truc may tinh',3,0,'KTMT')
		insert into MONHOC values('TKCSDL','Thiet ke co so du lieu',3,1,'HTTT')
		insert into MONHOC values('PTTKHTTT','Phan tich thiet ke he thong thong tin',4,1,'HTTT')
		insert into MONHOC values('HDH','He dieu hanh',4,0,'KTMT')
		insert into MONHOC values('NMCNPM','Nhap mon cong nghe phan mem',3,0,'CNPM')
		insert into MONHOC values('LTCFW','Lap trinh C for win',3,1,'CNPM')
		insert into MONHOC values('LTHDT','Lap trinh huong doi tuong',3,1,'CNPM')

		-- Nhập dữ liệu cho LOP --
		insert into LOP values('K11','Lop 1 khoa 1','K1108',11,'GV07')
		insert into LOP values('K12','Lop 2 khoa 1','K1205',12,'GV09')
		insert into LOP values('K13','Lop 3 khoa 1','K1305',12,'GV14')

		-- Nhập dữ liệu cho HOCVIEN --
		insert into HOCVIEN values('K1101','Nguyen Van','A','1/27/1986','Nam','TpHCM','K11')
		insert into HOCVIEN values('K1102','Tran Ngoc','Han','3/1/1986','Nu','Kien Giang','K11')
		insert into HOCVIEN values('K1103','Ha Duy','Lap','4/18/1986','Nam','Nghe An','K11')
		insert into HOCVIEN values('K1104','Tran Ngoc','Linh','3/30/1986','Nu','Tay Ninh','K11')
		insert into HOCVIEN values('K1105','Tran Minh','Long','2/27/1986','Nam','TpHCM','K11')
		insert into HOCVIEN values('K1106','Le Nhat','Minh','1/24/1986','Nam','TpHCM','K11')
		insert into HOCVIEN values('K1107','Nguyen Nhu','Nhut','1/27/1986','Nam','Ha Noi','K11')
		insert into HOCVIEN values('K1108','Nguyen Manh','Tam','2/27/1986','Nam','Kien Giang','K11')
		insert into HOCVIEN values('K1109','Phan Thi Thanh','Tam','1/27/1986','Nu','Vinh Long','K11')
		insert into HOCVIEN values('K1110','Le Hoai','Thuong','2/5/1986','Nu','Can Tho','K11')
		insert into HOCVIEN values('K1111','Le Ha','Vinh','12/25/1986','Nam','Vinh Long','K11')
		insert into HOCVIEN values('K1201','Nguyen Van','B','2/11/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1202','Nguyen Thi Kim','Duyen','1/18/1986','Nu','TpHCM','K12')
		insert into HOCVIEN values('K1203','Tran Thi Kim','Duyen','9/17/1986','Nu','TpHCM','K12')
		insert into HOCVIEN values('K1204','Truong My','Hanh','5/19/1986','Nu','Dong Nai','K12')
		insert into HOCVIEN values('K1205','Nguyen Thanh','Nam','4/17/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1206','Nguyen Thi Truc','Thanh','3/4/1986','Nu','Kien Giang','K12')
		insert into HOCVIEN values('K1207','Tran Thi Bich','Thuy','2/8/1986','Nu','Nghe An','K12')
		insert into HOCVIEN values('K1208','Huynh Thi Kim','Trieu','4/8/1986','Nu','Tay Ninh','K12')
		insert into HOCVIEN values('K1209','Pham Thanh','Trieu','2/23/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1210','Ngo Thanh','Tuan','2/14/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1211','Do Thi','Xuan','3/9/1986','Nu','Ha Noi','K12')
		insert into HOCVIEN values('K1212','Le Thi Phi','Yen','3/12/1986','Nu','TpHCM','K12')
		insert into HOCVIEN values('K1301','Nguyen Thi Kim','Cuc','6/9/1986','Nu','Kien Giang','K13')
		insert into HOCVIEN values('K1302','Truong Thi My','Hien','3/18/1986','Nu','Nghe An','K13')
		insert into HOCVIEN values('K1303','Le Duc','Hien','3/12/1986','Nam','Tay Ninh','K13')
		insert into HOCVIEN values('K1304','Le Quang','Hien','4/18/1986','Nam','TpHCM','K13')
		insert into HOCVIEN values('K1305','Le Thi','Huong','3/27/1986','Nu','TpHCM','K13')
		insert into HOCVIEN values('K1306','Nguyen Thai','Huu','3/30/1986','Nam','Ha Noi','K13')
		insert into HOCVIEN values('K1307','Tran Minh','Man','5/28/1986','Nam','TpHCM','K13')
		insert into HOCVIEN values('K1308','Nguyen Hieu','Nghia','4/8/1986','Nam','Kien Giang','K13')
		insert into HOCVIEN values('K1309','Nguyen Trung','Nghia','1/18/1987','Nam','Nghe An','K13')
		insert into HOCVIEN values('K1310','Tran Thi Hong','Tham','4/22/1986','Nu','Tay Ninh','K13')
		insert into HOCVIEN values('K1311','Tran Minh','Thuc','4/4/1986','Nam','TpHCM','K13')
		insert into HOCVIEN values('K1312','Nguyen Thi Kim','Yen','9/7/1986','Nu','TpHCM','K13')

		-- Nhập dữ liệu cho GIANGDAY --
		insert into GIANGDAY values('K11','THDC','GV07',1,2006,'1/2/2006','5/12/2006')
		insert into GIANGDAY values('K12','THDC','GV06',1,2006,'1/2/2006','5/12/2006')
		insert into GIANGDAY values('K13','THDC','GV15',1,2006,'1/2/2006','5/12/2006')
		insert into GIANGDAY values('K11','CTRR','GV02',1,2006,'1/9/2006','5/17/2006')
		insert into GIANGDAY values('K12','CTRR','GV02',1,2006,'1/9/2006','5/17/2006')
		insert into GIANGDAY values('K13','CTRR','GV08',1,2006,'1/9/2006','5/17/2006')
		insert into GIANGDAY values('K11','CSDL','GV05',2,2006,'6/1/2006','7/15/2006')
		insert into GIANGDAY values('K12','CSDL','GV09',2,2006,'6/1/2006','7/15/2006')
		insert into GIANGDAY values('K13','CTDLGT','GV15',2,2006,'6/1/2006','7/15/2006')
		insert into GIANGDAY values('K13','CSDL','GV05',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K13','DHMT','GV07',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K11','CTDLGT','GV15',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K12','CTDLGT','GV15',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K11','HDH','GV04',1,2007,'1/2/2007','2/18/2007')
		insert into GIANGDAY values('K12','HDH','GV04',1,2007,'1/2/2007','3/20/2007')
		insert into GIANGDAY values('K11','DHMT','GV07',1,2007,'2/18/2007','3/20/2007')

		-- NHẬP DỮ LIỆU CHO DIEUKIEN --
		insert into DIEUKIEN values('CSDL','CTRR')
		insert into DIEUKIEN values('CSDL','CTDLGT')
		insert into DIEUKIEN values('CTDLGT','THDC')
		insert into DIEUKIEN values('PTTKTT','THDC')
		insert into DIEUKIEN values('PTTKTT','CTDLGT')
		insert into DIEUKIEN values('DHMT','THDC')
		insert into DIEUKIEN values('LTHDT','THDC')
		insert into DIEUKIEN values('PTTKHTTT','CSDL')

		-- Nhập dữ liệu cho KETQUATHI --
		insert into KETQUATHI values('K1101','CSDL',1,'7/20/2006',10.00,'Dat')
		insert into KETQUATHI values('K1101','CTDLGT',1,'12/28/2006',9.00,'Dat')
		insert into KETQUATHI values('K1101','THDC',1,'5/20/2006',9.00,'Dat')
		insert into KETQUATHI values('K1101','CTRR',1,'5/13/2006',9.50,'Dat')
		insert into KETQUATHI values('K1102','CSDL',1,'7/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1102','CSDL',2,'7/27/2006',4.25,'Khong Dat')
		insert into KETQUATHI values('K1102','CSDL',3,'8/10/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1102','CTDLGT',1,'12/28/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1102','CTDLGT',2,'1/5/2007',4.00,'Khong Dat')
		insert into KETQUATHI values('K1102','CTDLGT',3,'1/15/2007',6.00,'Dat')
		insert into KETQUATHI values('K1102','THDC',1,'5/20/2006',5.00,'Dat')
		insert into KETQUATHI values('K1102','CTRR',1,'5/13/2006',7.00,'Dat')
		insert into KETQUATHI values('K1103','CSDL',1,'7/20/2006',3.50,'Khong Dat')
		insert into KETQUATHI values('K1103','CSDL',2,'7/27/2006',8.25,'Dat')
		insert into KETQUATHI values('K1103','CTDLGT',1,'12/28/2006',7.00,'Dat')
		insert into KETQUATHI values('K1103','THDC',1,'5/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1103','CTRR',1,'5/13/2006',6.50,'Dat')
		insert into KETQUATHI values('K1104','CSDL',1,'7/20/2006',3.75,'Khong Dat')
		insert into KETQUATHI values('K1104','CTDLGT',1,'12/28/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1104','THDC',1,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1104','CTRR',1,'5/13/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1104','CTRR',2,'5/20/2006',3.50,'Khong Dat')
		insert into KETQUATHI values('K1104','CTRR',3,'6/30/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1201','CSDL',1,'7/20/2006',6.00,'Dat')
		insert into KETQUATHI values('K1201','CTDLGT',1,'12/28/2006',5.00,'Dat')
		insert into KETQUATHI values('K1201','THDC',1,'5/20/2006',8.50,'Dat')
		insert into KETQUATHI values('K1201','CTRR',1,'5/13/2006',9.00,'Dat')
		insert into KETQUATHI values('K1202','CSDL',1,'7/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1202','CTDLGT',1,'12/28/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTDLGT',2,'1/5/2007',5.00,'Dat')
		insert into KETQUATHI values('K1202','THDC',1,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','THDC',2,'5/27/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTRR',1,'5/13/2006',3.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTRR',2,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTRR',3,'6/30/2006',6.25,'Dat')
		insert into KETQUATHI values('K1203','CSDL',1,'7/20/2006',9.25,'Dat')
		insert into KETQUATHI values('K1203','CTDLGT',1,'12/28/2006',9.50,'Dat')
		insert into KETQUATHI values('K1203','THDC',1,'5/20/2006',10.00,'Dat')
		insert into KETQUATHI values('K1203','CTRR',1,'5/13/2006',10.00,'Dat')
		insert into KETQUATHI values('K1204','CSDL',1,'7/20/2006',8.50,'Dat')
		insert into KETQUATHI values('K1204','CTDLGT',1,'12/28/2006',6.75,'Dat')
		insert into KETQUATHI values('K1204','THDC',1,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1204','CTRR',1,'5/13/2006',6.00,'Dat')
		insert into KETQUATHI values('K1301','CSDL',1,'12/20/2006',4.25,'Khong Dat')
		insert into KETQUATHI values('K1301','CTDLGT',1,'7/25/2006',8.00,'Dat')
		insert into KETQUATHI values('K1301','THDC',1,'5/20/2006',7.75,'Dat')
		insert into KETQUATHI values('K1301','CTRR',1,'5/13/2006',8.00,'Dat')
		insert into KETQUATHI values('K1302','CSDL',1,'12/20/2006',6.75,'Dat')
		insert into KETQUATHI values('K1302','CTDLGT',1,'7/25/2006',5.00,'Dat')
		insert into KETQUATHI values('K1302','THDC',1,'5/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1302','CTRR',1,'5/13/2006',8.50,'Dat')
		insert into KETQUATHI values('K1303','CSDL',1,'12/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1303','CTDLGT',1,'7/25/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1303','CTDLGT',2,'8/7/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1303','CTDLGT',3,'8/15/2006',4.25,'Khong Dat')
		insert into KETQUATHI values('K1303','THDC',1,'5/20/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1303','CTRR',1,'5/13/2006',3.25,'Khong Dat')
		insert into KETQUATHI values('K1303','CTRR',2,'5/20/2006',5.00,'Dat')
		insert into KETQUATHI values('K1304','CSDL',1,'12/20/2006',7.75,'Dat')
		insert into KETQUATHI values('K1304','CTDLGT',1,'7/25/2006',9.75,'Dat')
		insert into KETQUATHI values('K1304','THDC',1,'5/20/2006',5.50,'Dat')
		insert into KETQUATHI values('K1304','CTRR',1,'5/13/2006',5.00,'Dat')
		insert into KETQUATHI values('K1305','CSDL',1,'12/20/2006',9.25,'Dat')
		insert into KETQUATHI values('K1305','CTDLGT',1,'7/25/2006',10.00,'Dat')
		insert into KETQUATHI values('K1305','THDC',1,'5/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1305','CTRR',1,'5/13/2006',10.00,'Dat')

				--BaiTap3--
			--QuanLyBanHang--

			--Cau 2--
		SELECT * INTO SANPHAM1 FROM SANPHAM;
		SELECT * INTO KHACHHANG1 FROM KHACHHANG;

			--Cau 3--
		UPDATE SANPHAM1
		SET GIA=1.05*GIA
		WHERE NUOCSX = 'Thai Lan';

			--Cau 4--
		UPDATE SANPHAM1
		SET GIA=0.95*GIA
		WHERE NUOCSX ='Trung Quoc' AND GIA <= 10000;

			--Cau 5--
		UPDATE KHACHHANG1
		SET LOAIKH = 'Vip'
		WHERE (YEAR(NGDK) < 2007 AND DOANHSO >=10000000)
		OR (YEAR(NGDK) >= 2007 AND DOANHSO >=20000000);



				--BaiTap 4--
			  --QuanLyGiaoVu--

			--Cau 11--
		ALTER TABLE HOCVIEN 
		ADD CONSTRAINT CHECK_TUOI CHECK(YEAR(GETDATE()) - YEAR(NGSINH) >= 18);

			--Cau 12--
		ALTER TABLE GIANGDAY
		ADD CONSTRAINT CHECK_GIANGDAY CHECK(TUNGAY < DENNGAY);

			--Cau 13--
		ALTER TABLE GIAOVIEN
		ADD CONSTRAINT CHECK_TUOILAM CHECK (YEAR(NGVL) - YEAR(NGSINH) >= 22);

			--Cau 14--
		ALTER TABLE MONHOC
		ADD CONSTRAINT CHECK_TINCHI CHECK (ABS(TCLT - TCTH) <= 3);


				--BaiTap 5--
			  --QuanLyBanHang--

			--Cau 1--
		SELECT TENSP, MASP
		FROM SANPHAM
		WHERE NUOCSX = 'Trung Quoc';

			--Cau 2--
		SELECT MASP, TENSP
		FROM SANPHAM
		WHERE DVT IN ('cay','quyen');

			--Cau 3--
		SELECT MASP, TENSP
		FROM SANPHAM
		WHERE MASP LIKE 'B%01';

			--Cau 4--
		SELECT MASP, TenSP
		FROM SANPHAM
		WHERE 
			NUOCSX = 'Trung Quoc'
			AND GIA BETWEEN 30000 AND 40000;

			--Cau 5--
		SELECT MASP, TENSP
		WHERE
			NUOCSX In('Trung Quoc', 'Thai Lan')
			AND GIA BETWEEN 30000 AND 40000;

		
			--Cau 6--
		SELECT SoHD, TRIGIA
		FROM HOADON
		WHERE NGHD IN ('1/1/2007','2/1/2007');

			--Cau 7--
		SELECT SOHD, TRIGIA
		FROM HOADON
		WHERE MONTH(NGHD) = 1 AND YEAR(NGHD) = 2007
		ORDER BY NGHD ASC, TriGia DESC;

			--Cau 8--
		SELECT DISTINCT KHACHHANG.MAKH, HOTEN
		FROM KHACHHANG, HOADON
		WHERE 
			KHACHHang.MAKH = HOADON.MAKH
			AND NGHD = '1/1/2007';

			--Cau 9--
		SELECT SOHD, TRIGIA
		FROM HOADON, NHANVIEN
		WHERE
			HOADON.MANV = NHANVIEN.MANV
			AND HOTEN = 'Nguyen Van B'
			AND NGHD = '28/10/2006';

			--Cau 10--
		SELECT DISTINCT SANPHAM.MASP, TENSP
		FROM SANPHAM, CTHD, KHACHHANG, HOADON
		WHERE
			CTHD.MASP = SANPHAM.MASP
			AND CTHD.SOHD = HOADON.SOHD
			AND HOADON.MAKH = KHACHHANG.MAKH
			AND HOTEN = 'Nguyen Van A'
			AND MONTH(NGHD) = 10 AND YEAR(NGHD) = 2006;

			--Cau 11--
		SELECT DISTINCT SOHD
		FROM CTHD
		WHERE MASP IN ('BB01', 'BB02');


				--BaiTap 6--
			  --QuanLyGiaoVu--

			 --Cau 1--
		SELECT 
			MAHV,(HO+' '+TEN) HOTEN, NGSINH, HOCVIEN.MALOP
		FROM
			HOCVIEN, LOP
		WHERE
			HOCVIEN.MAHV=LOP.TRGLOP;
			
			
			--Cau 2--
		SELECT
			 HOCVIEN.MAHV, (HO+' '+TEN) HOTEN, LANTHI, DIEM
		FROM
			KETQUATHi, HOCVIEN
		WHERE 
			KETQUATHI.MAHV = HOCVIEN.MAHV
			AND MAMH = 'CTRR'
			AND MALOP = 'K12'
		ORDER BY
			TEN, HO;

			--Cau 3--
		SELECT
			HOCVIEN.MAHV, (HO+' '+TEN) HOTEN, TENMH
		FROM
			KETQUATHI, MONHOC, HOCVIEN
		WHERE 
			KETQUATHI.MAMH = MONHOC.MAMH
			AND KETQUATHI.MAHV = HOCVIEN.MAHV
			AND LANTHI = 1 AND KQUA = 'Dat';

			--Cau 4--
		SELECT
			HOCVIEN.MAHV, (HO+' '+TEN) HOTEN
		FROM
			HOCVIEN, KETQUATHI
		WHERE
			HOCVIEN.MAHV = KETQUATHI.MAHV
			AND MALOP = 'K11'
			AND MAMH = 'CTRR'
			AND KQUA = 'Khong Dat'
			AND LANTHI = 1;

			--Cau 5--
		SELECT
			HOCVIEN.MAHV, (HO+' '+TEN) HOTEN
		FROM 
			HOCVIEN, KETQUATHI
		WHERE 
			HOCVIEN.MAHV = KETQUATHI.MAHV
			AND MALOP LIKE 'K%'
			AND MAMH = 'CTRR'
			AND NOT EXISTS
				(SELECT * FROM KETQUATHI
				 WHERE
					KQua = 'Dat' 
					AND MaMH = 'CTRR' 
					AND MaHV = HocVien.MaHV
				)
=======
﻿				--BaiTap1--
			 --QuanLyBanHang--
			 --Nhap du lieu--


		--Nhap du lieu KHACHANG--
			SET DATEFORMAT DMY
		INSERT INTO KHACHHANG VALUES('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451','22/10/1960','22/07/2006',13060000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478','03/04/1974','30/07/2006',280000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266','12/06/1980','08/05/2006',3860000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476','09/03/1965','10/02/2006',250000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108','10/03/1950','28/10/2006',21000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738','31/12/1981','24/11/2006',915000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565','06/04/1971','12/01/2006',12500, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756','10/01/1971','13/12/2006',365000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763','03/09/1979','14/01/2007',70000, 'Vip')
		INSERT INTO KHACHHANG VALUES('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904','02/05/1983','16/01/2007',67500, 'Vip')


		--Nhap du lieu cho NHANVIEN--
		INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','927345678','13/04/2006')
		INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','987567390','21/04/2006')
		INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','997047382','27/04/2006')
		INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','913758498','24/06/2006')
		INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh','918590387','20/07/2006')

		-- Nhập dữ liệu cho SANPHAM
		INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
		INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
		INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
		INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
		INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
		INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
		INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
		INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
		INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
		INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
		INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
		INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
		INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
		INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
		INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
		INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
		INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
		INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
		INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
		INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
		INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
		INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
		INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
		INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)

		-- Nhập dữ liệu cho HOADON
		INSERT INTO HOADON VALUES(1001,'23/07/2006','KH01','NV01',320000)
		INSERT INTO HOADON VALUES(1002,'12/08/2006','KH01','NV02',840000)
		INSERT INTO HOADON VALUES(1003,'23/08/2006','KH02','NV01',100000)
		INSERT INTO HOADON VALUES(1004,'01/09/2006','KH02','NV01',180000)
		INSERT INTO HOADON VALUES(1005,'20/10/2006','KH01','NV02',3800000)
		INSERT INTO HOADON VALUES(1006,'16/10/2006','KH01','NV03',2430000)
		INSERT INTO HOADON VALUES(1007,'28/10/2006','KH03','NV03',510000)
		INSERT INTO HOADON VALUES(1008,'28/10/2006','KH01','NV03',440000)
		INSERT INTO HOADON VALUES(1009,'28/10/2006','KH03','NV04',200000)
		INSERT INTO HOADON VALUES(1010,'01/11/2006','KH01','NV01',5200000)
		INSERT INTO HOADON VALUES(1011,'04/11/2006','KH04','NV03',250000)
		INSERT INTO HOADON VALUES(1012,'30/11/2006','KH05','NV03',21000)
		INSERT INTO HOADON VALUES(1013,'12/12/2006','KH06','NV01',5000)
		INSERT INTO HOADON VALUES(1014,'31/12/2006','KH03','NV02',3150000)
		INSERT INTO HOADON VALUES(1015,'01/01/2007','KH06','NV01',910000)
		INSERT INTO HOADON VALUES(1016,'01/01/2007','KH07','NV02',12500)
		INSERT INTO HOADON VALUES(1017,'02/01/2007','KH08','NV03',35000)
		INSERT INTO HOADON VALUES(1018,'13/01/2007','KH08','NV03',330000)
		INSERT INTO HOADON VALUES(1019,'13/01/2007','KH01','NV03',30000)
		INSERT INTO HOADON VALUES(1020,'14/01/2007','KH09','NV04',70000)
		INSERT INTO HOADON VALUES(1021,'16/01/2007','KH10','NV03',67500)
		INSERT INTO HOADON VALUES(1022,'16/01/2007',Null,'NV03',7000)
		INSERT INTO HOADON VALUES(1023,'17/01/2007',Null,'NV01',330000)

		-- Nhập dữ liệu cho CTHD--
		INSERT INTO CTHD VALUES(1001,'TV02',10)
		INSERT INTO CTHD VALUES(1001,'ST01',5)
		INSERT INTO CTHD VALUES(1001,'BC01',5)
		INSERT INTO CTHD VALUES(1001,'BC02',10)
		INSERT INTO CTHD VALUES(1001,'ST08',10)
		INSERT INTO CTHD VALUES(1002,'BC04',20)
		INSERT INTO CTHD VALUES(1002,'BB01',20)
		INSERT INTO CTHD VALUES(1002,'BB02',20)
		INSERT INTO CTHD VALUES(1003,'BB03',10)
		INSERT INTO CTHD VALUES(1004,'TV01',20)
		INSERT INTO CTHD VALUES(1004,'TV02',10)
		INSERT INTO CTHD VALUES(1004,'TV03',10)
		INSERT INTO CTHD VALUES(1004,'TV04',10)
		INSERT INTO CTHD VALUES(1005,'TV05',50)
		INSERT INTO CTHD VALUES(1005,'TV06',50)
		INSERT INTO CTHD VALUES(1006,'TV07',20)
		INSERT INTO CTHD VALUES(1006,'ST01',30)
		INSERT INTO CTHD VALUES(1006,'ST02',10)
		INSERT INTO CTHD VALUES(1007,'ST03',10)
		INSERT INTO CTHD VALUES(1008,'ST04',8)
		INSERT INTO CTHD VALUES(1009,'ST05',10)
		INSERT INTO CTHD VALUES(1010,'TV07',50)
		INSERT INTO CTHD VALUES(1010,'ST07',50)
		INSERT INTO CTHD VALUES(1010,'ST08',100)
		INSERT INTO CTHD VALUES(1010,'ST04',50)
		INSERT INTO CTHD VALUES(1010,'TV03',100)
		INSERT INTO CTHD VALUES(1011,'ST06',50)
		INSERT INTO CTHD VALUES(1012,'ST07',3)
		INSERT INTO CTHD VALUES(1013,'ST08',5)
		INSERT INTO CTHD VALUES(1014,'BC02',80)
		INSERT INTO CTHD VALUES(1014,'BB02',100)
		INSERT INTO CTHD VALUES(1014,'BC04',60)
		INSERT INTO CTHD VALUES(1014,'BB01',50)
		INSERT INTO CTHD VALUES(1015,'BB02',30)
		INSERT INTO CTHD VALUES(1015,'BB03',7)
		INSERT INTO CTHD VALUES(1016,'TV01',5)
		INSERT INTO CTHD VALUES(1017,'TV02',1)
		INSERT INTO CTHD VALUES(1017,'TV03',1)
		INSERT INTO CTHD VALUES(1017,'TV04',5)
		INSERT INTO CTHD VALUES(1018,'ST04',6)
		INSERT INTO CTHD VALUES(1019,'ST05',1)
		INSERT INTO CTHD VALUES(1019,'ST06',2)
		INSERT INTO CTHD VALUES(1020,'ST07',10)
		INSERT INTO CTHD VALUES(1021,'ST08',5)
		INSERT INTO CTHD VALUES(1021,'TV01',7)
		INSERT INTO CTHD VALUES(1021,'TV02',10)
		INSERT INTO CTHD VALUES(1022,'ST07',1)
		INSERT INTO CTHD VALUES(1023,'ST04',6)


				--BaiTap2--
			--Quan Ly Giao Vu--

				-- Nhập dữ liệu cho KHOA --
		insert into KHOA values('KHMT','Khoa hoc may tinh','6/7/2005','GV01')
		insert into KHOA values('HTTT','He thong thong tin','6/7/2005','GV02')
		insert into KHOA values('CNPM','Cong nghe phan mem','6/7/2005','GV04')
		insert into KHOA values('MTT','Mang va truyen thong','10/20/2005','GV03')
		insert into KHOA values('KTMT','Ky thuat may tinh','12/20/2005','GV13')

		-- Nhập dữ liệu cho GIAOVIEN --
		insert into GIAOVIEN values('GV01','Ho Thanh Son','PTS','GS','Nam','5/2/1950','1/11/2004',5.00,2250000,'KHMT')
		insert into GIAOVIEN values('GV02','Tran Tam Thanh','TS','PGS','Nam','12/17/1965','4/20/2004',4.50,2025000,'HTTT')
		insert into GIAOVIEN values('GV03','Do Nghiem Phung','TS','GS','Nu','8/1/1950','9/23/2004',4.00,1800000,'CNPM')
		insert into GIAOVIEN values('GV04','Tran Nam Son','TS','PGS','Nam','2/22/1961','1/12/2005',4.50,2025000,'KTMT')
		insert into GIAOVIEN values('GV05','Mai Thanh Danh','ThS','GV','Nam','3/12/1958','1/12/2005',3.00,1350000,'HTTT')
		insert into GIAOVIEN values('GV06','Tran Doan Hung','TS','GV','Nam','3/11/1953','1/12/2005',4.50,2025000,'KHMT')
		insert into GIAOVIEN values('GV07','Nguyen Minh Tien','ThS','GV','Nam','11/23/1971','3/1/2005',4.00,1800000,'KHMT')
		insert into GIAOVIEN values('GV08','Le Thi Tran','KS','','Nu','3/26/1974','3/1/2005',1.69,760500,'KHMT')
		insert into GIAOVIEN values('GV09','Nguyen To Lan','ThS','GV','Nu','12/31/1966','3/1/2005',4.00,1800000,'HTTT')
		insert into GIAOVIEN values('GV10','Le Tran Anh Loan','KS','','Nu','7/17/1972','3/1/2005',1.86,837000,'CNPM')
		insert into GIAOVIEN values('GV11','Ho Thanh Tung','CN','GV','Nam','1/12/1980','5/15/2005',2.67,1201500,'MTT')
		insert into GIAOVIEN values('GV12','Tran Van Anh','CN','','Nu','3/29/1981','5/15/2005',1.69,760500,'CNPM')
		insert into GIAOVIEN values('GV13','Nguyen Linh Dan','CN','','Nu','5/23/1980','5/15/2005',1.69,760500,'KTMT')
		insert into GIAOVIEN values('GV14','Truong Minh Chau','ThS','GV','Nu','11/30/1976','5/15/2005',3.00,1350000,'MTT')
		insert into GIAOVIEN values('GV15','Le Ha Thanh','ThS','GV','Nam','5/4/1978','5/15/2005',3.00,1350000,'KHMT')
 
		-- Nhập dữ liệu cho MONHOC --
		insert into MONHOC values('THDC','Tin hoc dai cuong',4,1,'KHMT')
		insert into MONHOC values('CTRR','Cau truc roi rac',5,0,'KHMT')
		insert into MONHOC values('CSDL','Co so du lieu',3,1,'HTTT')
		insert into MONHOC values('CTDLGT','Cau truc du lieu va giai thuat',3,1,'KHMT')
		insert into MONHOC values('PTTKTT','Phan tich thiet ke thuat toan',3,0,'KHMT')
		insert into MONHOC values('DHMT','Do hoa may tinh',3,1,'KHMT')
		insert into MONHOC values('KTMT','Kien truc may tinh',3,0,'KTMT')
		insert into MONHOC values('TKCSDL','Thiet ke co so du lieu',3,1,'HTTT')
		insert into MONHOC values('PTTKHTTT','Phan tich thiet ke he thong thong tin',4,1,'HTTT')
		insert into MONHOC values('HDH','He dieu hanh',4,0,'KTMT')
		insert into MONHOC values('NMCNPM','Nhap mon cong nghe phan mem',3,0,'CNPM')
		insert into MONHOC values('LTCFW','Lap trinh C for win',3,1,'CNPM')
		insert into MONHOC values('LTHDT','Lap trinh huong doi tuong',3,1,'CNPM')

		-- Nhập dữ liệu cho LOP --
		insert into LOP values('K11','Lop 1 khoa 1','K1108',11,'GV07')
		insert into LOP values('K12','Lop 2 khoa 1','K1205',12,'GV09')
		insert into LOP values('K13','Lop 3 khoa 1','K1305',12,'GV14')

		-- Nhập dữ liệu cho HOCVIEN --
		insert into HOCVIEN values('K1101','Nguyen Van','A','1/27/1986','Nam','TpHCM','K11')
		insert into HOCVIEN values('K1102','Tran Ngoc','Han','3/1/1986','Nu','Kien Giang','K11')
		insert into HOCVIEN values('K1103','Ha Duy','Lap','4/18/1986','Nam','Nghe An','K11')
		insert into HOCVIEN values('K1104','Tran Ngoc','Linh','3/30/1986','Nu','Tay Ninh','K11')
		insert into HOCVIEN values('K1105','Tran Minh','Long','2/27/1986','Nam','TpHCM','K11')
		insert into HOCVIEN values('K1106','Le Nhat','Minh','1/24/1986','Nam','TpHCM','K11')
		insert into HOCVIEN values('K1107','Nguyen Nhu','Nhut','1/27/1986','Nam','Ha Noi','K11')
		insert into HOCVIEN values('K1108','Nguyen Manh','Tam','2/27/1986','Nam','Kien Giang','K11')
		insert into HOCVIEN values('K1109','Phan Thi Thanh','Tam','1/27/1986','Nu','Vinh Long','K11')
		insert into HOCVIEN values('K1110','Le Hoai','Thuong','2/5/1986','Nu','Can Tho','K11')
		insert into HOCVIEN values('K1111','Le Ha','Vinh','12/25/1986','Nam','Vinh Long','K11')
		insert into HOCVIEN values('K1201','Nguyen Van','B','2/11/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1202','Nguyen Thi Kim','Duyen','1/18/1986','Nu','TpHCM','K12')
		insert into HOCVIEN values('K1203','Tran Thi Kim','Duyen','9/17/1986','Nu','TpHCM','K12')
		insert into HOCVIEN values('K1204','Truong My','Hanh','5/19/1986','Nu','Dong Nai','K12')
		insert into HOCVIEN values('K1205','Nguyen Thanh','Nam','4/17/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1206','Nguyen Thi Truc','Thanh','3/4/1986','Nu','Kien Giang','K12')
		insert into HOCVIEN values('K1207','Tran Thi Bich','Thuy','2/8/1986','Nu','Nghe An','K12')
		insert into HOCVIEN values('K1208','Huynh Thi Kim','Trieu','4/8/1986','Nu','Tay Ninh','K12')
		insert into HOCVIEN values('K1209','Pham Thanh','Trieu','2/23/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1210','Ngo Thanh','Tuan','2/14/1986','Nam','TpHCM','K12')
		insert into HOCVIEN values('K1211','Do Thi','Xuan','3/9/1986','Nu','Ha Noi','K12')
		insert into HOCVIEN values('K1212','Le Thi Phi','Yen','3/12/1986','Nu','TpHCM','K12')
		insert into HOCVIEN values('K1301','Nguyen Thi Kim','Cuc','6/9/1986','Nu','Kien Giang','K13')
		insert into HOCVIEN values('K1302','Truong Thi My','Hien','3/18/1986','Nu','Nghe An','K13')
		insert into HOCVIEN values('K1303','Le Duc','Hien','3/12/1986','Nam','Tay Ninh','K13')
		insert into HOCVIEN values('K1304','Le Quang','Hien','4/18/1986','Nam','TpHCM','K13')
		insert into HOCVIEN values('K1305','Le Thi','Huong','3/27/1986','Nu','TpHCM','K13')
		insert into HOCVIEN values('K1306','Nguyen Thai','Huu','3/30/1986','Nam','Ha Noi','K13')
		insert into HOCVIEN values('K1307','Tran Minh','Man','5/28/1986','Nam','TpHCM','K13')
		insert into HOCVIEN values('K1308','Nguyen Hieu','Nghia','4/8/1986','Nam','Kien Giang','K13')
		insert into HOCVIEN values('K1309','Nguyen Trung','Nghia','1/18/1987','Nam','Nghe An','K13')
		insert into HOCVIEN values('K1310','Tran Thi Hong','Tham','4/22/1986','Nu','Tay Ninh','K13')
		insert into HOCVIEN values('K1311','Tran Minh','Thuc','4/4/1986','Nam','TpHCM','K13')
		insert into HOCVIEN values('K1312','Nguyen Thi Kim','Yen','9/7/1986','Nu','TpHCM','K13')

		-- Nhập dữ liệu cho GIANGDAY --
		insert into GIANGDAY values('K11','THDC','GV07',1,2006,'1/2/2006','5/12/2006')
		insert into GIANGDAY values('K12','THDC','GV06',1,2006,'1/2/2006','5/12/2006')
		insert into GIANGDAY values('K13','THDC','GV15',1,2006,'1/2/2006','5/12/2006')
		insert into GIANGDAY values('K11','CTRR','GV02',1,2006,'1/9/2006','5/17/2006')
		insert into GIANGDAY values('K12','CTRR','GV02',1,2006,'1/9/2006','5/17/2006')
		insert into GIANGDAY values('K13','CTRR','GV08',1,2006,'1/9/2006','5/17/2006')
		insert into GIANGDAY values('K11','CSDL','GV05',2,2006,'6/1/2006','7/15/2006')
		insert into GIANGDAY values('K12','CSDL','GV09',2,2006,'6/1/2006','7/15/2006')
		insert into GIANGDAY values('K13','CTDLGT','GV15',2,2006,'6/1/2006','7/15/2006')
		insert into GIANGDAY values('K13','CSDL','GV05',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K13','DHMT','GV07',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K11','CTDLGT','GV15',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K12','CTDLGT','GV15',3,2006,'8/1/2006','12/15/2006')
		insert into GIANGDAY values('K11','HDH','GV04',1,2007,'1/2/2007','2/18/2007')
		insert into GIANGDAY values('K12','HDH','GV04',1,2007,'1/2/2007','3/20/2007')
		insert into GIANGDAY values('K11','DHMT','GV07',1,2007,'2/18/2007','3/20/2007')

		-- NHẬP DỮ LIỆU CHO DIEUKIEN --
		insert into DIEUKIEN values('CSDL','CTRR')
		insert into DIEUKIEN values('CSDL','CTDLGT')
		insert into DIEUKIEN values('CTDLGT','THDC')
		insert into DIEUKIEN values('PTTKTT','THDC')
		insert into DIEUKIEN values('PTTKTT','CTDLGT')
		insert into DIEUKIEN values('DHMT','THDC')
		insert into DIEUKIEN values('LTHDT','THDC')
		insert into DIEUKIEN values('PTTKHTTT','CSDL')

		-- Nhập dữ liệu cho KETQUATHI --
		insert into KETQUATHI values('K1101','CSDL',1,'7/20/2006',10.00,'Dat')
		insert into KETQUATHI values('K1101','CTDLGT',1,'12/28/2006',9.00,'Dat')
		insert into KETQUATHI values('K1101','THDC',1,'5/20/2006',9.00,'Dat')
		insert into KETQUATHI values('K1101','CTRR',1,'5/13/2006',9.50,'Dat')
		insert into KETQUATHI values('K1102','CSDL',1,'7/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1102','CSDL',2,'7/27/2006',4.25,'Khong Dat')
		insert into KETQUATHI values('K1102','CSDL',3,'8/10/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1102','CTDLGT',1,'12/28/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1102','CTDLGT',2,'1/5/2007',4.00,'Khong Dat')
		insert into KETQUATHI values('K1102','CTDLGT',3,'1/15/2007',6.00,'Dat')
		insert into KETQUATHI values('K1102','THDC',1,'5/20/2006',5.00,'Dat')
		insert into KETQUATHI values('K1102','CTRR',1,'5/13/2006',7.00,'Dat')
		insert into KETQUATHI values('K1103','CSDL',1,'7/20/2006',3.50,'Khong Dat')
		insert into KETQUATHI values('K1103','CSDL',2,'7/27/2006',8.25,'Dat')
		insert into KETQUATHI values('K1103','CTDLGT',1,'12/28/2006',7.00,'Dat')
		insert into KETQUATHI values('K1103','THDC',1,'5/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1103','CTRR',1,'5/13/2006',6.50,'Dat')
		insert into KETQUATHI values('K1104','CSDL',1,'7/20/2006',3.75,'Khong Dat')
		insert into KETQUATHI values('K1104','CTDLGT',1,'12/28/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1104','THDC',1,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1104','CTRR',1,'5/13/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1104','CTRR',2,'5/20/2006',3.50,'Khong Dat')
		insert into KETQUATHI values('K1104','CTRR',3,'6/30/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1201','CSDL',1,'7/20/2006',6.00,'Dat')
		insert into KETQUATHI values('K1201','CTDLGT',1,'12/28/2006',5.00,'Dat')
		insert into KETQUATHI values('K1201','THDC',1,'5/20/2006',8.50,'Dat')
		insert into KETQUATHI values('K1201','CTRR',1,'5/13/2006',9.00,'Dat')
		insert into KETQUATHI values('K1202','CSDL',1,'7/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1202','CTDLGT',1,'12/28/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTDLGT',2,'1/5/2007',5.00,'Dat')
		insert into KETQUATHI values('K1202','THDC',1,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','THDC',2,'5/27/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTRR',1,'5/13/2006',3.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTRR',2,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1202','CTRR',3,'6/30/2006',6.25,'Dat')
		insert into KETQUATHI values('K1203','CSDL',1,'7/20/2006',9.25,'Dat')
		insert into KETQUATHI values('K1203','CTDLGT',1,'12/28/2006',9.50,'Dat')
		insert into KETQUATHI values('K1203','THDC',1,'5/20/2006',10.00,'Dat')
		insert into KETQUATHI values('K1203','CTRR',1,'5/13/2006',10.00,'Dat')
		insert into KETQUATHI values('K1204','CSDL',1,'7/20/2006',8.50,'Dat')
		insert into KETQUATHI values('K1204','CTDLGT',1,'12/28/2006',6.75,'Dat')
		insert into KETQUATHI values('K1204','THDC',1,'5/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1204','CTRR',1,'5/13/2006',6.00,'Dat')
		insert into KETQUATHI values('K1301','CSDL',1,'12/20/2006',4.25,'Khong Dat')
		insert into KETQUATHI values('K1301','CTDLGT',1,'7/25/2006',8.00,'Dat')
		insert into KETQUATHI values('K1301','THDC',1,'5/20/2006',7.75,'Dat')
		insert into KETQUATHI values('K1301','CTRR',1,'5/13/2006',8.00,'Dat')
		insert into KETQUATHI values('K1302','CSDL',1,'12/20/2006',6.75,'Dat')
		insert into KETQUATHI values('K1302','CTDLGT',1,'7/25/2006',5.00,'Dat')
		insert into KETQUATHI values('K1302','THDC',1,'5/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1302','CTRR',1,'5/13/2006',8.50,'Dat')
		insert into KETQUATHI values('K1303','CSDL',1,'12/20/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1303','CTDLGT',1,'7/25/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1303','CTDLGT',2,'8/7/2006',4.00,'Khong Dat')
		insert into KETQUATHI values('K1303','CTDLGT',3,'8/15/2006',4.25,'Khong Dat')
		insert into KETQUATHI values('K1303','THDC',1,'5/20/2006',4.50,'Khong Dat')
		insert into KETQUATHI values('K1303','CTRR',1,'5/13/2006',3.25,'Khong Dat')
		insert into KETQUATHI values('K1303','CTRR',2,'5/20/2006',5.00,'Dat')
		insert into KETQUATHI values('K1304','CSDL',1,'12/20/2006',7.75,'Dat')
		insert into KETQUATHI values('K1304','CTDLGT',1,'7/25/2006',9.75,'Dat')
		insert into KETQUATHI values('K1304','THDC',1,'5/20/2006',5.50,'Dat')
		insert into KETQUATHI values('K1304','CTRR',1,'5/13/2006',5.00,'Dat')
		insert into KETQUATHI values('K1305','CSDL',1,'12/20/2006',9.25,'Dat')
		insert into KETQUATHI values('K1305','CTDLGT',1,'7/25/2006',10.00,'Dat')
		insert into KETQUATHI values('K1305','THDC',1,'5/20/2006',8.00,'Dat')
		insert into KETQUATHI values('K1305','CTRR',1,'5/13/2006',10.00,'Dat')

				--BaiTap3--
			--QuanLyBanHang--

			--Cau 2--
		SELECT * INTO SANPHAM1 FROM SANPHAM;
		SELECT * INTO KHACHHANG1 FROM KHACHHANG;

			--Cau 3--
		UPDATE SANPHAM1
		SET GIA=1.05*GIA
		WHERE NUOCSX = 'Thai Lan';

			--Cau 4--
		UPDATE SANPHAM1
		SET GIA=0.95*GIA
		WHERE NUOCSX ='Trung Quoc' AND GIA <= 10000;

			--Cau 5--
		UPDATE KHACHHANG1
		SET LOAIKH = 'Vip'
		WHERE (YEAR(NGDK) < 2007 AND DOANHSO >=10000000)
		OR (YEAR(NGDK) >= 2007 AND DOANHSO >=20000000);



				--BaiTap 4--
			  --QuanLyGiaoVu--

			--Cau 11--
		ALTER TABLE HOCVIEN 
		ADD CONSTRAINT CHECK_TUOI CHECK(YEAR(GETDATE()) - YEAR(NGSINH) >= 18);

			--Cau 12--
		ALTER TABLE GIANGDAY
		ADD CONSTRAINT CHECK_GIANGDAY CHECK(TUNGAY < DENNGAY);

			--Cau 13--
		ALTER TABLE GIAOVIEN
		ADD CONSTRAINT CHECK_TUOILAM CHECK (YEAR(NGVL) - YEAR(NGSINH) >= 22);

			--Cau 14--
		ALTER TABLE MONHOC
		ADD CONSTRAINT CHECK_TINCHI CHECK (ABS(TCLT - TCTH) <= 3);
>>>>>>> d59209946cf502d389a40bcacbd05ec04869b0fc

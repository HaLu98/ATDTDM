CREATE DATABASE luanshop;
USE luanshop;

create table KHACHHANG (
	MAKH VARCHAR(50) not null,
	HOTEN VARCHAR(50),
	DCHI VARCHAR(50),
	SDT VARCHAR(50),
	primary key(MAKH)
);

insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH01', 'Tran Hao Luan', '17A Cong Hoa', '9897879191');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH02', 'Nguyen Anh Thi', '54 Le Loi', '4767067978');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH03', 'Ngo Thi Kha Anh', '48/12 Dien Bien Phu', '7886234980');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH04', 'Tran Van Hung', '18/5 Hoang Van Thu', '6277653916');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH05', 'Nguyen Van A', '5 Phan Dang Luu', '3923682333');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH06', 'Nguyen Thi B', '60/10 Cong Hoa', '8655726908');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH07', 'Tran C', '6 Nguyen Hue', '4011036272');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH08', 'Le Thi D', '10 Phan Xich Long', '5209127536');
insert into KHACHHANG (MAKH, HOTEN, DCHI, SDT, NGSINH) values ('KH09', 'Doan Van E', '43/12/6 Phan Dang Luu', '3914927980');

create table LOAISP (
	MALOAI VARCHAR(50) not null,
	TENLOAI VARCHAR(50),
	NHASX VARCHAR(50),
	primary key(MALOAI)
);
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('001', 'Regal', 'Ward, Huels and Nader');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('002', '3 Series', 'Robel LLC');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('003', 'H1', 'Smitham, Howell and Weissnat');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('004', '2500', 'Ankunding-Ebert');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('005', 'Chariot', 'Weimann, Williamson and Bradtke');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('006', 'Ram Van 2500', 'Jenkins, Prohaska and Hand');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('007', 'Mighty Max Macro', 'Kemmer-Sporer');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('008', 'Ram Wagon B150', 'Thiel, Davis and Turcotte');
insert into LOAISP (MALOAI, TENLOAI, NHASX) values ('009', 'Sportage', 'Baumbach-Marvin');

create table SANPHAM (
	MASP VARCHAR(50) not null,
	MALOAI VARCHAR(50),
	TENSANPHAM VARCHAR(50),
	DVT VARCHAR(50),
	NUOCSX VARCHAR(50),
	GIA VARCHAR(50),
	primary key(MASP),
	foreign key(MALOAI) references LOAISP(MALOAI)
);
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP01', '001', 'Gloves - Goldtouch Disposable', 'CNY', 'China', '$6615.81');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP02', '001', 'Squash - Acorn', 'DOP', 'Dominican Republic', '$6906.82');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP03', '003', 'Wine - Chateau Timberlay', 'AZN', 'Azerbaijan', '$3959.63');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP04', '005', 'Yogurt - Banana, 175 Gr', 'EUR', 'Greece', '$9727.95');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP05', '006', 'Vinegar - Red Wine', 'CZK', 'Czech Republic', '$1050.76');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP06', '006', 'Trout Rainbow Whole', 'ALL', 'Albania', '$4061.89');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP07', '007', 'Wine - Tribal Sauvignon', 'IDR', 'Indonesia', '$5915.14');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP08', '008', '7up Diet, 355 Ml', 'CNY', 'China', '$5457.58');
insert into SANPHAM (MASP, MALOAI, TENSANPHAM, DVT, NUOCSX, GIA) values ('SP09', '009', 'Rolled Oats', 'RUB', 'Russia', '$4059.49');

create table HOADON (
	SOHD INT not null,
	NGHD DATE,
	MAKH VARCHAR(50),
	GIA VARCHAR(50),
	primary key(SOHD),
	FOREIGN KEY(MAKH) REFERENCES KHACHHANG(MAKH)
);
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (1, '2020-09-26', 'KH05', '$446309.60');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (2, '2020-11-15', 'KH08', '$431299.21');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (3, '2020-03-09', 'KH09', '$662248.66');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (4, '2020-05-09', 'KH08', '$336971.02');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (5, '2020-11-13', 'KH01', '$369645.38');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (6, '2020-07-21', 'KH07', '$840969.31');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (7, '2020-10-26', 'KH06', '$326036.29');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (8, '2020-08-23', 'KH09', '$528406.16');
insert into HOADON (SOHD, NGHD, MAKH, GIA) values (9, '2020-08-08', 'KH02', '$832222.66');

create table CTHD (
	SOHD INT,
	MASP VARCHAR(50),
	SL INT,
	primary key(SOHD,MASP),
	FOREIGN KEY(SOHD) REFERENCES HOADON(SOHD),
	FOREIGN KEY(MASP) REFERENCES SANPHAM(MASP)
);
insert into CTHD (SOHD, MASP, SL) values (1, 'SP05', 35);
insert into CTHD (SOHD, MASP, SL) values (2, 'SP06', 38);
insert into CTHD (SOHD, MASP, SL) values (3, 'SP07', 38);
insert into CTHD (SOHD, MASP, SL) values (4, 'SP04', 67);
insert into CTHD (SOHD, MASP, SL) values (5, 'SP03', 22);
insert into CTHD (SOHD, MASP, SL) values (6, 'SP02', 71);
insert into CTHD (SOHD, MASP, SL) values (7, 'SP01', 23);
insert into CTHD (SOHD, MASP, SL) values (8, 'SP09', 50);
insert into CTHD (SOHD, MASP, SL) values (9, 'SP09', 79);



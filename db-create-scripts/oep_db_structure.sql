--------------------------------------------------------------------------------
-- Copyright (c) 2014 by DTT Technology Joint Stock Company (http://dtt.vn/).
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- 
--  http://www.apache.org/licenses/LICENSE-2.0
-- 
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--------------------------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brms_doanhnghiep`
--

DROP TABLE IF EXISTS `brms_doanhnghiep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brms_doanhnghiep` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(40) NOT NULL,
  `TEN` text NOT NULL,
  `MASOTHUE` varchar(40) DEFAULT NULL,
  `TENTIENGNUOCNGOAI` text,
  `TENVIETTAT` varchar(200) DEFAULT NULL,
  `DIACHIDOANHNGHIEP` text NOT NULL,
  `DIENTHOAIDOANHNGHIEP` varchar(30) DEFAULT NULL,
  `FAX` varchar(30) DEFAULT NULL,
  `EMAILDOANHNGHIEP` varchar(100) DEFAULT NULL,
  `WEBSITE` varchar(200) DEFAULT NULL,
  `TONGSOVON` double(18,0) NOT NULL,
  `MOTANGANHNGHEKINHDOANH` text,
  `SOGCNDKKD` varchar(40) NOT NULL,
  `NGAYCAPGCNDKKD` datetime NOT NULL,
  `NOILUUTRUID` double(12,0) DEFAULT NULL,
  `NGAYDIEULEDUOCTHONGQUA` datetime DEFAULT NULL,
  `TENCHINHANH` text,
  `DIACHICHINHANH` text,
  `TENVANPHONGDAIDIEN` text,
  `DIACHIVANPHONGDAIDIEN` text,
  `NGAYBATDAUTAMNGUNG` datetime DEFAULT NULL,
  `NGAYKETTHUCTAMNGUNG` datetime DEFAULT NULL,
  `LYDOTAMNGUNG` text,
  `NGAYCHAMDUTHOATDONGKD` datetime DEFAULT NULL,
  `LOAI` double(1,0) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `CHAID` double(22,0) DEFAULT NULL,
  `DIACHIDOANHNGHIEPHUYENID` double(22,0) DEFAULT NULL,
  `DIACHIDOANHNGHIEPTINHID` double(22,0) DEFAULT NULL,
  `DIACHIDOANHNGHIEPXAID` double(22,0) DEFAULT NULL,
  `LOAIDOITUONGID` double(22,0) NOT NULL,
  `NGUOIDAIDIENID` double(22,0) DEFAULT NULL,
  `TRANGTHAIDOANHNGHIEPID` double(22,0) NOT NULL,
  `VONDIEULE` double(22,0) DEFAULT NULL,
  `VONTOITHIEUMOTXAVIEN` double(22,0) DEFAULT NULL,
  `GHICHU` text,
  `QUOCGIAID` double(22,0) DEFAULT NULL,
  `COQUANCAPID` double(22,0) DEFAULT NULL,
  `TENCOQUANCAP` varchar(200) DEFAULT NULL,
  `SOLANDIEUCHINH` double(3,0) DEFAULT NULL,
  `NGAYDIEUCHINH` datetime DEFAULT NULL,
  `CHUCVUNGUOIDAIDIEN` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BRMS_DN_BRMS_DN_FK_I_1` (`CHAID`),
  KEY `BRMS_DN_CMON_DCDNH` (`DIACHIDOANHNGHIEPHUYENID`),
  KEY `BRMS_DN_CMON_DCDNX` (`DIACHIDOANHNGHIEPXAID`),
  KEY `BRMS_DN_CMON_TTDN` (`TRANGTHAIDOANHNGHIEPID`),
  KEY `BRMS_DN_CMON_LDT` (`LOAIDOITUONGID`),
  KEY `BRMS_DN_CMON_DCDNT` (`DIACHIDOANHNGHIEPTINHID`),
  KEY `BRMS_DN_CSMS_CD` (`NGUOIDAIDIENID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_bangnhap`
--

DROP TABLE IF EXISTS `cmon_bangnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_bangnhap` (
  `ID` double(22,0) NOT NULL,
  `TENBANG` text NOT NULL,
  `THUTUCHANHCHINHID` double(22,0) NOT NULL,
  `NGUOITAOID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_capcoquanquanly`
--

DROP TABLE IF EXISTS `cmon_capcoquanquanly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_capcoquanquanly` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` varchar(200) NOT NULL,
  `CAP` double(2,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `CHAID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_CCQQL_CMON_CCQQL_FK_I` (`CHAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_capdonvihanhchinh`
--

DROP TABLE IF EXISTS `cmon_capdonvihanhchinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_capdonvihanhchinh` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` varchar(200) NOT NULL,
  `CAP` double(2,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_capnhatketqua`
--

DROP TABLE IF EXISTS `cmon_capnhatketqua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_capnhatketqua` (
  `ID` double(22,0) NOT NULL,
  `TENBANG` varchar(60) DEFAULT NULL,
  `BANGHIID` double(22,0) DEFAULT NULL,
  `HANHDONG` double(1,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `HOSOTTHCCONGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_CAPNH_HOSOTHUTUC_FK_I` (`HOSOTTHCCONGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_chucvu`
--

DROP TABLE IF EXISTS `cmon_chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_chucvu` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_chucvu2vaitro`
--

DROP TABLE IF EXISTS `cmon_chucvu2vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_chucvu2vaitro` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `VAITROID` double(22,0) NOT NULL,
  `COQUANQUANLYID` double(22,0) NOT NULL,
  `CHUCVUID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_CV2VT_CMON_CV_FK_I` (`CHUCVUID`),
  KEY `CMON_CV2VT_CMON_CQQL_FK_I` (`COQUANQUANLYID`),
  KEY `CMON_CV2VT_CMON_VT_FK_I` (`VAITROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_chuyenmon`
--

DROP TABLE IF EXISTS `cmon_chuyenmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_chuyenmon` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` text NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `DANHMUCUNGDUNGID` double(22,0) DEFAULT NULL,
  `CHAID` double(22,0) DEFAULT NULL,
  `CAP` double(2,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_congchuc`
--

DROP TABLE IF EXISTS `cmon_congchuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_congchuc` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(40) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `TAIKHOANNGUOIDUNGID` double(22,0) DEFAULT NULL,
  `COQUANQUANLYID` double(22,0) DEFAULT NULL,
  `CHUCVUID` double(22,0) NOT NULL,
  `GIOITINHID` double(22,0) DEFAULT NULL,
  `HOVATEN` varchar(200) NOT NULL,
  `NGAYSINH` datetime NOT NULL,
  `SOCMND` varchar(30) DEFAULT NULL,
  `NGAYCAPCMND` datetime DEFAULT NULL,
  `NOICAPCMND` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CMON_CC_MA_UK` (`MA`),
  KEY `CMON_CC_CMON_GT_I` (`GIOITINHID`),
  KEY `CMON_CC_CMON_CQQL_FK_I` (`COQUANQUANLYID`),
  KEY `-` (`TAIKHOANNGUOIDUNGID`),
  KEY `CMON_CC_CMON_CV_FK_I` (`CHUCVUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_coquanhanhchinhsunghiep`
--

DROP TABLE IF EXISTS `cmon_coquanhanhchinhsunghiep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_coquanhanhchinhsunghiep` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(26) NOT NULL,
  `TEN` text NOT NULL,
  `ANH` longblob,
  `SDTDUONGDAYNONG` varchar(30) NOT NULL,
  `NOIBO` double(1,0) NOT NULL DEFAULT '0',
  `CHUCNANG` text NOT NULL,
  `TONGSOCBNV` double(5,0) NOT NULL,
  `SODIENTHOAI` varchar(30) DEFAULT NULL,
  `FAX` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `TONGSOGIUONGBENH` double(5,0) DEFAULT NULL,
  `VIDO` varchar(100) DEFAULT NULL,
  `KINHDO` varchar(100) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `DIACHICOQUANHCSNXAID` double(22,0) NOT NULL,
  `TUYENID` double(22,0) DEFAULT NULL,
  `DIACHICOQUANHCSNTINHID` double(22,0) NOT NULL,
  `NGUOIDAIDIENID` double(22,0) DEFAULT NULL,
  `DIACHICOQUANHCSNHUYENID` double(22,0) NOT NULL,
  `HANGID` double(22,0) DEFAULT NULL,
  `COQUANQUANLYID` double(22,0) NOT NULL,
  `CHAID` double(22,0) DEFAULT NULL,
  `LOAIID` double(22,0) NOT NULL,
  `SOQDTHANHLAP` varchar(40) DEFAULT NULL,
  `MOTADIACHI` varchar(200) DEFAULT NULL,
  `TENNGUOIDAIDIEN` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON__COQU_CMON_DVHC_TINH_FK_I` (`DIACHICOQUANHCSNTINHID`),
  KEY `CMON__COQU_CMON_DVHC_XA_FK_I` (`DIACHICOQUANHCSNXAID`),
  KEY `CMON__COQU_CMON__COQU_FK_I` (`CHAID`),
  KEY `CMON__COQU_CMON_HANGC_FK_I` (`HANGID`),
  KEY `CMON__COQU_CMON_TUYEN_FK_I` (`TUYENID`),
  KEY `CMON__COQU_CMON_DVHC_FK_I` (`DIACHICOQUANHCSNHUYENID`),
  KEY `CMON__COQU_CMON_CQQL_FK_I` (`COQUANQUANLYID`),
  KEY `CMON__COQU_CMON_CC_FK_I` (`NGUOIDAIDIENID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_coquanhcsn2chuyenmon`
--

DROP TABLE IF EXISTS `cmon_coquanhcsn2chuyenmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_coquanhcsn2chuyenmon` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `COQUANHCSNID` double(22,0) DEFAULT NULL,
  `CHUYENMONID` double(22,0) NOT NULL,
  `COQUANHCSN2GIAYPHEPID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMO_COQUA2_CMO_COQUAN_FK_I` (`COQUANHCSNID`),
  KEY `CMO_COQUA2_CMON_CM_FK_I` (`CHUYENMONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_coquanhcsn2giayphep`
--

DROP TABLE IF EXISTS `cmon_coquanhcsn2giayphep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_coquanhcsn2giayphep` (
  `ID` double(22,0) NOT NULL,
  `SOCHUNGCHIGIAYPHEP` varchar(60) NOT NULL,
  `NGAYKY` datetime DEFAULT NULL,
  `COGIATRITUNGAY` datetime DEFAULT NULL,
  `HIEULUCDENGAY` datetime DEFAULT NULL,
  `TRANGTHAI` double(1,0) DEFAULT '1',
  `GHICHU` text,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `HOSOTTHCCONGID` double(22,0) NOT NULL,
  `DIADANHID` double(22,0) DEFAULT NULL,
  `COQUANHCSNID` double(22,0) NOT NULL,
  `COQUANCAPID` double(22,0) NOT NULL,
  `CHUCVUID` double(22,0) DEFAULT NULL,
  `CANBOKYID` double(22,0) DEFAULT NULL,
  `CANBOPTCHUYENMONID` double(22,0) NOT NULL,
  `LOAICHUNGCHIGIAYPHEPID` double(22,0) NOT NULL,
  `HINHTHUCTOCHUCID` double(22,0) DEFAULT NULL,
  `HUYENID` double(22,0) DEFAULT NULL,
  `MOTADIACHI` text,
  `NGAYCAP` datetime DEFAULT NULL,
  `NOICAP` varchar(200) DEFAULT NULL,
  `SOCCNGUOIQLCHUYENMON` varchar(60) DEFAULT NULL,
  `TENCOQUANHCSN` text,
  `TENNGUOIQLCHUYENMON` varchar(240) DEFAULT NULL,
  `THOIGIANHOATDONG` varchar(60) DEFAULT NULL,
  `THUTUCHANHCHINHID` double(22,0) DEFAULT NULL,
  `TINHID` double(22,0) DEFAULT NULL,
  `XAID` double(22,0) DEFAULT NULL,
  `TENTRINHDOCHUYENMON` varchar(200) DEFAULT NULL,
  `TRINHDOCHUYENMONID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMO_COQUAN_CMON_CC_FK_I` (`CANBOPTCHUYENMONID`),
  KEY `CMO_COQUAN_CMON_CV_FK_I` (`CHUCVUID`),
  KEY `CMO_COQUAN_CMON_DVHC_FK_I` (`DIADANHID`),
  KEY `CMO_COQUAN_HOSOTHUTUC_FK_I` (`HOSOTTHCCONGID`),
  KEY `CMO_COQUAN_CMON_CC_CANBOKY_F_I` (`CANBOKYID`),
  KEY `CMO_COQUAN_CMON_CQQL_FK_I` (`COQUANCAPID`),
  KEY `CMO_COQUAN_CMON_DMGT_FK_I` (`LOAICHUNGCHIGIAYPHEPID`),
  KEY `CMO_COQUAN_CMON__COQU_FK_I` (`COQUANHCSNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_coquanquanly`
--

DROP TABLE IF EXISTS `cmon_coquanquanly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_coquanquanly` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(16) NOT NULL,
  `TEN` varchar(200) NOT NULL,
  `DIACHI` text NOT NULL,
  `DIENTHOAI` varchar(30) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `FAX` varchar(30) DEFAULT NULL,
  `WEBSITE` varchar(200) DEFAULT NULL,
  `NOIBO` double(1,0) NOT NULL DEFAULT '0',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `DONVIHANHCHINHID` double(22,0) NOT NULL,
  `CAPCOQUANQUANLYID` double(22,0) NOT NULL,
  `CHAID` double(22,0) DEFAULT NULL,
  `MERCHANT` varchar(60) DEFAULT NULL,
  `ACCESSCODE` varchar(60) DEFAULT NULL,
  `SECURE_SECRET` varchar(60) DEFAULT NULL,
  `MACAPSOBIENNHAN` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_CQQL_CMON_CQQL_FK_I` (`CHAID`),
  KEY `CMON_CQQL_CMON_CCQQL_FK_I` (`CAPCOQUANQUANLYID`),
  KEY `CMON_CQQLY_CMON_DVHC_FK_I` (`DONVIHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_danhmucanhxa`
--

DROP TABLE IF EXISTS `cmon_danhmucanhxa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_danhmucanhxa` (
  `ID` double(22,0) NOT NULL,
  `MADNG` varchar(100) DEFAULT NULL,
  `MAKHAC` varchar(100) DEFAULT NULL,
  `TENDNG` text,
  `TENKHAC` text,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `TENBANG` varchar(60) DEFAULT NULL,
  `DANHMUCUNGDUNGID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_DANHM_CMON_DMUD_FK_I` (`DANHMUCUNGDUNGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_danhmucbangdulieu`
--

DROP TABLE IF EXISTS `cmon_danhmucbangdulieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_danhmucbangdulieu` (
  `TENBANG` varchar(60) NOT NULL,
  `MOTA` text,
  `LADANHMUCCHUAN` double(1,0) NOT NULL,
  PRIMARY KEY (`TENBANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_danhmucgiayto`
--

DROP TABLE IF EXISTS `cmon_danhmucgiayto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_danhmucgiayto` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(30) NOT NULL,
  `TEN` text NOT NULL,
  `MOTA` text,
  `GIOIHANDUNGLUONG` double(10,0) NOT NULL,
  `KIEUTAILIEU` varchar(200) NOT NULL,
  `THAYTHETAILIEUID` double(22,0) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_danhmucloi`
--

DROP TABLE IF EXISTS `cmon_danhmucloi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_danhmucloi` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` varchar(200) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `NHOMDMLOIID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_DML_CMON_NDML_FK_I` (`NHOMDMLOIID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_danhmuctruongdulieu`
--

DROP TABLE IF EXISTS `cmon_danhmuctruongdulieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_danhmuctruongdulieu` (
  `ID` double(22,0) NOT NULL,
  `TENTRUONG` varchar(100) NOT NULL,
  `MOTA` varchar(200) DEFAULT NULL,
  `TENBANG` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CMON_DMTRUONGDL_TENBANGTENT_UK` (`TENBANG`,`TENTRUONG`),
  KEY `CMON_DMTDL_CMON_DMBDL_FK_I_3` (`TENBANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_danhmucungdung`
--

DROP TABLE IF EXISTS `cmon_danhmucungdung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_danhmucungdung` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(30) NOT NULL,
  `TEN` varchar(200) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_dantoc`
--

DROP TABLE IF EXISTS `cmon_dantoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_dantoc` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `TENKHAC` text,
  `LATHIEUSO` double(1,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_dinhnghiadulieu`
--

DROP TABLE IF EXISTS `cmon_dinhnghiadulieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_dinhnghiadulieu` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(255) NOT NULL DEFAULT '',
  `MOTA` text,
  `BANGHIID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `TRUONGDULIEUID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CMON_DINHNGHIADULIEU_TEN_UK` (`TEN`),
  KEY `CMON_DNDL_CMON_DMTDL_FK_I` (`TRUONGDULIEUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_dmgiayto2doituongsudung`
--

DROP TABLE IF EXISTS `cmon_dmgiayto2doituongsudung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_dmgiayto2doituongsudung` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `LOAIGIAYTOID` double(22,0) NOT NULL,
  `LOAIDOITUONGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_GT2DT_CMON_DMGT_FK_I` (`LOAIGIAYTOID`),
  KEY `CMON_GT2DT_CMON_LDT_FK_I` (`LOAIDOITUONGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_donvihanhchinh`
--

DROP TABLE IF EXISTS `cmon_donvihanhchinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_donvihanhchinh` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(16) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `QUOCGIAID` double(22,0) NOT NULL,
  `CAPDONVIHANHCHINHID` double(22,0) NOT NULL,
  `CHAID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_DVHC_CMON_CDVHC_FK_I` (`CAPDONVIHANHCHINHID`),
  KEY `CMON_DVHC_CMON_QG_FK_I` (`QUOCGIAID`),
  KEY `CMON_DVHC_CMON_DVHC_FK_I` (`CHAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_giatricot`
--

DROP TABLE IF EXISTS `cmon_giatricot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_giatricot` (
  `ID` double(22,0) NOT NULL,
  `BANGNHAPID` double(22,0) NOT NULL,
  `TENTRUONG` text NOT NULL,
  `GIATRITRUONG` text,
  `KIEUDULIEU` varchar(100) DEFAULT NULL,
  `NGUOITAOID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGAYSUA` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_giaytodinhkemhoso`
--

DROP TABLE IF EXISTS `cmon_giaytodinhkemhoso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_giaytodinhkemhoso` (
  `SOBANGIAY` double(2,0) NOT NULL DEFAULT '1',
  `DADOICHIEU` double(1,0) NOT NULL DEFAULT '0',
  `TTHSTAITHOIDIEMDINHKEM` double(2,0) NOT NULL DEFAULT '1',
  `NOILUUTRUTAILIEUID` double(22,0) DEFAULT NULL,
  `NGUOIUPLOAD` varchar(100) NOT NULL,
  `NGAYUPLOAD` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `HOSOTTHCCONGID` double(22,0) NOT NULL,
  `THUTUC2GIAYTOID` double(22,0) DEFAULT NULL,
  `CANBOID` double(22,0) DEFAULT NULL,
  `ID` double(22,0) NOT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `MALOAITAILIEUDUOCTHAYTHE` varchar(30) DEFAULT NULL,
  `DANHMUCGIAYTOID` double(22,0) DEFAULT NULL,
  `DATRA` double(1,0) DEFAULT '0',
  `BANCHINH` double(1,0) DEFAULT '1',
  `GHICHU` text,
  PRIMARY KEY (`ID`),
  KEY `CMON_GIAYT_HOSOTHUTUC_FK_I` (`HOSOTTHCCONGID`),
  KEY `CMON_GIAYT_CMON_TT2GT_FK_I` (`THUTUC2GIAYTOID`),
  KEY `CMON_GIAYT_CMON_CC_FK_I` (`CANBOID`),
  KEY `CMON_GIAYT_CMON_NOILUUTRU_FK_I` (`NOILUUTRUTAILIEUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_gioitinh`
--

DROP TABLE IF EXISTS `cmon_gioitinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_gioitinh` (
  `TEN` varchar(40) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_hangcoquanhcsn`
--

DROP TABLE IF EXISTS `cmon_hangcoquanhcsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_hangcoquanhcsn` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_hanhdongnguoidung`
--

DROP TABLE IF EXISTS `cmon_hanhdongnguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_hanhdongnguoidung` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` varchar(200) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `NHOMHANHDONGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_HDND_CMON_NHDND_FK_I` (`NHOMHANHDONGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_hethong`
--

DROP TABLE IF EXISTS `cmon_hethong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_hethong` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` text,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `MA` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_hosoanhxa`
--

DROP TABLE IF EXISTS `cmon_hosoanhxa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_hosoanhxa` (
  `ID` double(22,0) NOT NULL,
  `HOSOTTHCCONGID` double(22,0) NOT NULL,
  `MAHOSO` varchar(60) NOT NULL,
  `TRANGTHAI` double(2,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGAYSUA` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_hosotthccong`
--

DROP TABLE IF EXISTS `cmon_hosotthccong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_hosotthccong` (
  `ID` double(22,0) NOT NULL,
  `MASOHOSO` varchar(50) DEFAULT NULL,
  `NGAYNOPHOSO` datetime NOT NULL,
  `NGAYNHANHOSO` datetime DEFAULT NULL,
  `TENCOQUANTIEPNHAN` varchar(200) NOT NULL,
  `TENTHUTUCHANHCHINH` text NOT NULL,
  `NGAYHENTRAKETQUA` datetime DEFAULT NULL,
  `NGAYTRAKETQUA` datetime DEFAULT NULL,
  `NGAYNOPHOSOGOC` datetime DEFAULT NULL,
  `NGAYHENNOPHOSOGOC` datetime DEFAULT NULL,
  `TENCANBOTIEPNHAN` varchar(60) DEFAULT NULL,
  `CHUCVUCANBOTIEPNHAN` varchar(100) DEFAULT NULL,
  `HOTENNGUOINOPHOSO` varchar(60) NOT NULL,
  `DIACHITHUONGTRUNGUOINOP` varchar(200) NOT NULL,
  `SODIENTHOAICODINHNGUOINOP` varchar(30) DEFAULT NULL,
  `TENCANBOTRAKETQUA` varchar(60) DEFAULT NULL,
  `CHUCVUCANBOTRAKETQUA` varchar(100) DEFAULT NULL,
  `HOTENNGUOINHANKETQUA` varchar(60) DEFAULT NULL,
  `DIACHITHUONGTRUNGUOINHANKQ` varchar(200) DEFAULT NULL,
  `SODIENTHOAINGUOINHAN` varchar(30) DEFAULT NULL,
  `NGAYCAP` datetime DEFAULT NULL,
  `LANCAP` double(3,0) DEFAULT NULL,
  `TENCOQUANCAP` varchar(200) DEFAULT NULL,
  `HIEULUCTUNGAY` datetime DEFAULT NULL,
  `HIEULUCDENNGAY` datetime DEFAULT NULL,
  `TRANGTHAIHOSO` double(22,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `THUTUCHANHCHINHID` double(22,0) NOT NULL,
  `CONGDANNOPID` double(22,0) DEFAULT NULL,
  `DIACHITHUONGTRUNGUOINHANKQID` double(22,0) DEFAULT NULL,
  `COQUANTIEPNHANID` double(22,0) NOT NULL,
  `CANBOTRAKETQUAID` double(22,0) DEFAULT NULL,
  `CANBOTIEPNHANID` double(22,0) DEFAULT NULL,
  `DIACHITHUONGTRUNGUOINOPID` double(22,0) DEFAULT NULL,
  `SODIENTHOAIDIDONGNGUOINOP` varchar(30) DEFAULT NULL,
  `PHONGBANXULYHIENTHOIID` double(22,0) DEFAULT NULL,
  `TENPHONGBANXULYHIENTHOI` varchar(200) DEFAULT NULL,
  `CANBOXULYHIENTHOIID` double(22,0) DEFAULT NULL,
  `TENCANBOXULYHIENTHOI` varchar(60) DEFAULT NULL,
  `DANHGIAKETQUA` double(1,0) DEFAULT NULL,
  `GHICHU` text,
  `NGAYKETTHUCXULY` datetime DEFAULT NULL,
  `LOAIHOSO` double(1,0) NOT NULL,
  `YEUCAUHUYHOSO` double(1,0) DEFAULT '0',
  `MASOBIENNHAN` varchar(60) DEFAULT NULL,
  `TENBANGCHUAHOSO` text,
  `CHUSOHUU` text NOT NULL,
  `NGUOIDAIDIENPHAPLUATID` double(22,0) DEFAULT NULL,
  `SOBOHOSO` double(1,0) DEFAULT NULL,
  `LEPHI` double(10,0) DEFAULT NULL,
  `PHIHOSO` double(10,0) DEFAULT NULL,
  `TRICHYEU` varchar(60) DEFAULT NULL,
  `NGAYHENTBTHUE` datetime DEFAULT NULL,
  `EMAILNGUOINOP` varchar(100) DEFAULT NULL,
  `MAUNGDUNG` varchar(30) DEFAULT NULL,
  `LYDO` text,
  `NGUOIDAIDIENPHAPLUAT` varchar(60) DEFAULT NULL,
  `CHUYENSANGMOTCUA` double(1,0) DEFAULT '0',
  `DAGUIGIAYHEN` double(1,0) DEFAULT '0',
  `DOITUONGCANXULYID` double(22,0) DEFAULT NULL,
  `MOTATHANHPHANHOSO` text,
  `LIENKETTHANHPHANHOSO` text,
  `SONGAYXULY` double(3,0) DEFAULT NULL,
  `DATRAKETQUATRUCTUYEN` double(1,0) DEFAULT '0',
  `EMAILNGUOINHAN` varchar(50) DEFAULT NULL,
  `NGAYSINHNGUOINHAN` datetime DEFAULT NULL,
  `DIENTHOAICODINHNGUOINHAN` varchar(15) DEFAULT NULL,
  `CMNDNGUOINHAN` varchar(15) DEFAULT NULL,
  `GIOITINHNGUOINHAN` double(1,0) DEFAULT NULL,
  `DUNGXULY` double(1,0) DEFAULT '0',
  `NGAYBOSUNG` datetime DEFAULT NULL,
  `GHICHUGIAYTODINHKEM` text,
  `DADANGKYNHANSMS` double(1,0) NOT NULL DEFAULT '0',
  `DADANGKYCHUYENPHATNHANH` double(1,0) NOT NULL DEFAULT '0',
  `DUOCPHEPEDITCONGDAN` double(1,0) DEFAULT '1',
  `DIACHICHUHOSO` text,
  PRIMARY KEY (`ID`),
  KEY `HOSOTHUTUC_CMON_DVHC_FK_I` (`DIACHITHUONGTRUNGUOINHANKQID`),
  KEY `HOSOTHUTUC_CMON_CANBOTRAKET__I` (`CANBOTRAKETQUAID`),
  KEY `HOSOTHUTUC_CMON_CC_FK_I` (`CANBOTIEPNHANID`),
  KEY `HOSOTHUTUC_CMON_CQQL_FK_I` (`COQUANTIEPNHANID`),
  KEY `HOSOTHUTUC_CMON_TTHC_FK_I` (`THUTUCHANHCHINHID`),
  KEY `HOSODIACHITHUONGTRUNGUOINHA__I` (`DIACHITHUONGTRUNGUOINOPID`),
  KEY `CMON_HSTTHC_CSMS_CDN` (`CONGDANNOPID`),
  KEY `CMON_HSTTHC_CSMS_CHSH` (`NGUOIDAIDIENPHAPLUATID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_lichsugiaytodinhkem`
--

DROP TABLE IF EXISTS `cmon_lichsugiaytodinhkem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_lichsugiaytodinhkem` (
  `ID` double(22,0) NOT NULL,
  `NOILUUTRUTAILIEUID` double(22,0) NOT NULL,
  `TENTAILIEU` text NOT NULL,
  `NGAYTAO` datetime NOT NULL,
  `NGUOITAO` varchar(100) NOT NULL,
  `HANHDONG` double(1,0) NOT NULL DEFAULT '0',
  `GIAYTODINHKEMHOSOID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_LICHS_CMON_GIAYT_FK_I` (`GIAYTODINHKEMHOSOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_lichsusua`
--

DROP TABLE IF EXISTS `cmon_lichsusua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_lichsusua` (
  `ID` double(22,0) NOT NULL,
  `BANGHIID` double(22,0) NOT NULL,
  `GIATRICU` text NOT NULL,
  `NGAYSUA` datetime NOT NULL,
  `NGUOISUA` varchar(100) NOT NULL,
  `TRUONGDULIEUID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_LSS_CMON_DMTDL_FK_I` (`TRUONGDULIEUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_loaicoquanhcsn`
--

DROP TABLE IF EXISTS `cmon_loaicoquanhcsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_loaicoquanhcsn` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_loaidoanhnghiep`
--

DROP TABLE IF EXISTS `cmon_loaidoanhnghiep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_loaidoanhnghiep` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(30) NOT NULL,
  `TEN` text NOT NULL,
  `MOTA` text,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_loaidoituong`
--

DROP TABLE IF EXISTS `cmon_loaidoituong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_loaidoituong` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` text,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `MA` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_lydothuhoiccgp`
--

DROP TABLE IF EXISTS `cmon_lydothuhoiccgp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_lydothuhoiccgp` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` text NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `LOAICHUNGCHIGIAYPHEPID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `HMS_LYDOTH_CMON_DMGT_FK_I` (`LOAICHUNGCHIGIAYPHEPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nganhnghe2nhomnganhnghe`
--

DROP TABLE IF EXISTS `cmon_nganhnghe2nhomnganhnghe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nganhnghe2nhomnganhnghe` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `NHOMNGANHNGHEKINHDOANHID` double(22,0) NOT NULL,
  `NGANHNGHEID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_NN2N_CMON_NNNKD_FK_I` (`NHOMNGANHNGHEKINHDOANHID`),
  KEY `CMON_NN2N_CMON_NNKD_FK_I` (`NGANHNGHEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nganhnghekinhdoanh`
--

DROP TABLE IF EXISTS `cmon_nganhnghekinhdoanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nganhnghekinhdoanh` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` text NOT NULL,
  `CAP` double(1,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `CHAID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_NNKD_CMON_NNKD_FK_I` (`CHAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nghenghiep`
--

DROP TABLE IF EXISTS `cmon_nghenghiep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nghenghiep` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` text NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_ngoaite`
--

DROP TABLE IF EXISTS `cmon_ngoaite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_ngoaite` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(6) NOT NULL,
  `TEN` varchar(200) NOT NULL,
  `TYGIA` double(10,2) NOT NULL DEFAULT '1.00',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nguoidung2nhom`
--

DROP TABLE IF EXISTS `cmon_nguoidung2nhom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nguoidung2nhom` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `TAIKHOANNGUOIDUNGID` double(22,0) NOT NULL,
  `NHOMID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_ND2N_CMON_N_FK_I` (`NHOMID`),
  KEY `CMON_ND2N_CMON_TKND_FK_I` (`TAIKHOANNGUOIDUNGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nguoidung2vaitro`
--

DROP TABLE IF EXISTS `cmon_nguoidung2vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nguoidung2vaitro` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `VAITROID` double(22,0) NOT NULL,
  `TAIKHOANNGUOIDUNGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_ND2VT_CMON_VT_FK_I` (`TAIKHOANNGUOIDUNGID`),
  KEY `CMON_ND2VT_CMON_TKND_FK_I` (`VAITROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhatkyloi`
--

DROP TABLE IF EXISTS `cmon_nhatkyloi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhatkyloi` (
  `ID` double(22,0) NOT NULL,
  `GIAODICHID` double(22,0) NOT NULL,
  `TENDANGNHAP` varchar(100) NOT NULL,
  `THOIGIANBILOI` datetime NOT NULL,
  `MOTALOI` text NOT NULL,
  `THUTUCHANHCHINHID` double(22,0) DEFAULT NULL,
  `LOIID` double(22,0) NOT NULL,
  `UNGDUNGID` double(22,0) NOT NULL,
  `HETHONGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_NKL_CMON_DML_FK_I` (`LOIID`),
  KEY `CMON_NKL_CMON_DMUD_FK_I` (`UNGDUNGID`),
  KEY `CMON_NKL_CMON_HT_FK_I` (`HETHONGID`),
  KEY `CMON_NKL_CMON_TTHC_FK_I` (`THUTUCHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhatkytruynhap`
--

DROP TABLE IF EXISTS `cmon_nhatkytruynhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhatkytruynhap` (
  `ID` double(22,0) NOT NULL,
  `GIAODICHID` double(22,0) NOT NULL,
  `TENDANGNHAP` varchar(100) NOT NULL,
  `THOIGIANTRUYNHAP` datetime NOT NULL,
  `THUTUCHANHCHINHID` double(22,0) DEFAULT NULL,
  `HANHDONGID` double(22,0) NOT NULL,
  `UNGDUNGID` double(22,0) NOT NULL,
  `HETHONGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_NKTN_CMON_HT_FK_I` (`HETHONGID`),
  KEY `CMON_NKTN_CMON_DMUD_FK_I` (`UNGDUNGID`),
  KEY `CMON_NKTN_CMON_HDND_FK_I` (`HANHDONGID`),
  KEY `CMON_NKTN_CMON_TTHC_FK_I` (`THUTUCHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhom`
--

DROP TABLE IF EXISTS `cmon_nhom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhom` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` text,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhom2vaitro`
--

DROP TABLE IF EXISTS `cmon_nhom2vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhom2vaitro` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `VAITROID` double(22,0) NOT NULL,
  `NHOMNGUOIDUNGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_N2VT_CMON_N_FK_I` (`NHOMNGUOIDUNGID`),
  KEY `CMON_N2VT_CMON_VT_FK_I` (`VAITROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhomdanhmucloi`
--

DROP TABLE IF EXISTS `cmon_nhomdanhmucloi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhomdanhmucloi` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` varchar(200) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhomhanhdongnguoidung`
--

DROP TABLE IF EXISTS `cmon_nhomhanhdongnguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhomhanhdongnguoidung` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` varchar(200) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhomnganhnghekinhdoanh`
--

DROP TABLE IF EXISTS `cmon_nhomnganhnghekinhdoanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhomnganhnghekinhdoanh` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` text NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CMON_NNNKD_MA_UK` (`MA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_nhomthutuchanhchinh`
--

DROP TABLE IF EXISTS `cmon_nhomthutuchanhchinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_nhomthutuchanhchinh` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` text NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `DANHMUCUNGDUNGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_NTTHC_CMON_DMUD_FK_I` (`DANHMUCUNGDUNGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_noiluutrutailieu`
--

DROP TABLE IF EXISTS `cmon_noiluutrutailieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_noiluutrutailieu` (
  `ID` double(22,0) NOT NULL,
  `TENTAILIEU` text NOT NULL,
  `GHICHU` varchar(200) DEFAULT NULL,
  `NOILUUTRUID` double(12,0) NOT NULL,
  `NGAYUPLOAD` datetime NOT NULL,
  `PHIENBAN` double(3,0) NOT NULL DEFAULT '1',
  `NGAYDUYET` datetime DEFAULT NULL,
  `HIEULUCTUNGAY` datetime DEFAULT NULL,
  `HIEULUCDENNGAY` datetime DEFAULT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '0',
  `DANHMUCGIAYTOID` double(22,0) DEFAULT NULL,
  `CHUSOHUUID` double(22,0) NOT NULL,
  `NGUOIUPLOADID` double(22,0) NOT NULL,
  `NGUOIDUYETID` double(22,0) DEFAULT NULL,
  `HOSOTTHCCONGID` double(22,0) DEFAULT NULL,
  `MAUNGDUNG` varchar(30) DEFAULT NULL,
  `LOAI` double(1,0) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CMON_TLCT_CMON_TKND_FK_I` (`NGUOIUPLOADID`),
  KEY `CMON_TLCT_CMON_TKND_TAIKHOA__I` (`CHUSOHUUID`),
  KEY `CMON_TLCT_CMON_DMGT_FK_I` (`DANHMUCGIAYTOID`),
  KEY `CMON_TLCT_HOSOTHUTUC_FK_I` (`HOSOTTHCCONGID`),
  KEY `CMON_TLCT_CMON_TKND_NGUOIDU__I` (`NGUOIDUYETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_phienbancsdl`
--

DROP TABLE IF EXISTS `cmon_phienbancsdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_phienbancsdl` (
  `PHIENBAN` varchar(16) NOT NULL,
  `NGAYCAPNHAT` datetime NOT NULL,
  `MOTA` text NOT NULL,
  `NGUOICAPNHAT` text NOT NULL,
  `FILECAUTRUC` text NOT NULL,
  `FILEDULIEU` text NOT NULL,
  `FILEMOHINH` text NOT NULL,
  PRIMARY KEY (`PHIENBAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_phienbandanhmuc`
--

DROP TABLE IF EXISTS `cmon_phienbandanhmuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_phienbandanhmuc` (
  `ID` double(22,0) NOT NULL,
  `PHIENBAN` double(10,0) NOT NULL,
  `NGAYBATDAUHIEULUC` datetime NOT NULL,
  `NGAYHETHIEULUC` datetime DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `GHICHU` text NOT NULL,
  `TENBANG` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CMON_PHIENBANDANHMUC_MA_UK` (`TENBANG`,`PHIENBAN`),
  KEY `CMON_PBDM_CMON_DMBDL_FK_I` (`TENBANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_quanhegiadinh`
--

DROP TABLE IF EXISTS `cmon_quanhegiadinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_quanhegiadinh` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_quocgia`
--

DROP TABLE IF EXISTS `cmon_quocgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_quocgia` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(6) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_taikhoannguoidung`
--

DROP TABLE IF EXISTS `cmon_taikhoannguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_taikhoannguoidung` (
  `ID` double(22,0) NOT NULL,
  `TENDANGNHAP` varchar(100) NOT NULL,
  `MATKHAU` varchar(100) NOT NULL,
  `TENNGUOIDUNG` varchar(200) NOT NULL,
  `CAUHOIMATKHAU` text,
  `CAUTRALOIMATKHAU` text,
  `EMAIL` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `LOAIDOITUONGID` double(22,0) DEFAULT NULL,
  `TAIKHOANNGUOIDUNGID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_TKND_LOAIDOITUONG_FK_I` (`LOAIDOITUONGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_tainguyen`
--

DROP TABLE IF EXISTS `cmon_tainguyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_tainguyen` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(200) NOT NULL,
  `MOTA` text,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `UNGDUNGID` double(22,0) DEFAULT NULL,
  `HETHONGID` double(22,0) NOT NULL,
  `LOAI` double(1,0) DEFAULT NULL,
  `TAINGUYEN` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_TN_CMON_HT_FK_I` (`HETHONGID`),
  KEY `CMON_TN_CMON_DMUD_FK_I` (`UNGDUNGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_tainguyen2vaitro`
--

DROP TABLE IF EXISTS `cmon_tainguyen2vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_tainguyen2vaitro` (
  `ID` double(22,0) NOT NULL,
  `TAINGUYENID` double(22,0) NOT NULL,
  `VAITROID` double(22,0) NOT NULL,
  `HANHDONG` double(1,0) NOT NULL DEFAULT '0',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(50) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(50) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_thamso`
--

DROP TABLE IF EXISTS `cmon_thamso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_thamso` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(200) NOT NULL,
  `GIATRI` text,
  `KIEUDULIEU` double(1,0) DEFAULT '0',
  `MOTA` text,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `UNGDUNGID` double(22,0) DEFAULT NULL,
  `HETHONGID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_TS_CMON_HT_FK_I` (`HETHONGID`),
  KEY `CMON_TS_CMON_DMUD_FK_I` (`UNGDUNGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_thongtinthanhtoan`
--

DROP TABLE IF EXISTS `cmon_thongtinthanhtoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_thongtinthanhtoan` (
  `ID` double(22,0) NOT NULL,
  `HOSOTTHCCONGID` double(22,0) NOT NULL,
  `TAIKHOANNGUOIDUNGNOPID` double(22,0) DEFAULT NULL,
  `TAIKHOANNGUOIDUNGNHANID` double(22,0) DEFAULT NULL,
  `LOAITHANHTOAN` double(1,0) DEFAULT NULL,
  `TENNGUOINOPTIEN` text,
  `TENCANBONHANTIEN` text,
  `XACNHAN` double(1,0) NOT NULL DEFAULT '0',
  `LOAIPHI` double(1,0) NOT NULL,
  `SOTIEN` double(22,0) DEFAULT NULL,
  `NGAYTHUTIEN` datetime DEFAULT NULL,
  `NGAYXACNHAN` datetime DEFAULT NULL,
  `NGAYCHUYENTIEN` datetime DEFAULT NULL,
  `YKIEN` text,
  `NGUOITAO` varchar(50) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOISUA` varchar(50) DEFAULT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NOILUUTRUID` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_THONGTIN_HSTTHCC_FK_I` (`HOSOTTHCCONGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_thuhoichungchigiayphep`
--

DROP TABLE IF EXISTS `cmon_thuhoichungchigiayphep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_thuhoichungchigiayphep` (
  `ID` double(22,0) NOT NULL,
  `SOCCGP` varchar(60) NOT NULL,
  `NGAYCAP` datetime NOT NULL,
  `NOICAP` varchar(200) DEFAULT NULL,
  `NOIDUNGTHUHOI` text,
  `NGAYTHUHOI` datetime NOT NULL,
  `QUYETDINHTHUHOIID` double(22,0) DEFAULT NULL,
  `CHUNGCHIGIAYPHEPID` double(22,0) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `LYDOTHUHOIID` double(22,0) NOT NULL,
  `LOAICCGPID` double(22,0) NOT NULL,
  `COQUANTHUHOIID` double(22,0) NOT NULL,
  `CONGDANID` double(22,0) DEFAULT NULL,
  `COQUANHCSNID` double(22,0) DEFAULT NULL,
  `DOANHNGHIEPID` double(22,0) DEFAULT NULL,
  `NGUOIUPLOAD` varchar(100) DEFAULT NULL,
  `NGAYUPLOAD` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_THUHO_CMON_CQQL_FK_I` (`COQUANTHUHOIID`),
  KEY `CMON_THUHO_CMON__COQU_FK_I` (`COQUANHCSNID`),
  KEY `CMON_THUHO_CMON_DMGT_FK_I` (`LOAICCGPID`),
  KEY `CMON_THUHO_HMS_LYDOTH_FK_I` (`LYDOTHUHOIID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_thutuc2giayto`
--

DROP TABLE IF EXISTS `cmon_thutuc2giayto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_thutuc2giayto` (
  `ID` double(22,0) NOT NULL,
  `GHICHU` text,
  `BATBUOC` double(1,0) NOT NULL,
  `THUTUHIENTHI` double(2,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `GIAIDOAN` double(22,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `THUTUCHANHCHINHID` double(22,0) NOT NULL,
  `DANHMUCGIAYTOID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_TT2GT_CMON_DMGT_FK_I` (`DANHMUCGIAYTOID`),
  KEY `CMON_TT2GT_CMON_TTHC_FK_I` (`THUTUCHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_thutuchanhchinh`
--

DROP TABLE IF EXISTS `cmon_thutuchanhchinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_thutuchanhchinh` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(30) NOT NULL,
  `TEN` text NOT NULL,
  `SONGAYXULY` double(3,0) NOT NULL DEFAULT '0',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `NHOMTHUTUCHANHCHINHID` double(22,0) NOT NULL,
  `CANTICHHOP` double(1,0) DEFAULT '0',
  `MADNG` varchar(30) DEFAULT NULL,
  `LEPHI` double(22,0) DEFAULT NULL,
  `DONVILEPHI` varchar(200) DEFAULT NULL,
  `PHI` double(22,0) DEFAULT NULL,
  `DONVIPHI` varchar(200) DEFAULT NULL,
  `TENMAUDONTOKHAI` text,
  `CAPCOQUANQUANLYID` double(22,0) DEFAULT NULL,
  `UENGINEPROCESSNAME` varchar(100) DEFAULT NULL,
  `THUTUCLIENTHONGID` double(22,0) DEFAULT NULL,
  `TRINHTUTHUCHIEN` longtext,
  `YEUCAUDIEUKIENTHUCHIEN` longtext,
  `CANCUPHAPLY` longtext,
  `THANHPHANHOSO` longtext,
  `LINHVUCTHUCHIEN` longtext,
  `CACHTHUCHIEN` text,
  PRIMARY KEY (`ID`),
  KEY `CMON_TTHC_CMON_NTTHC_FK_I` (`NHOMTHUTUCHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_thutuchanhchinhlienthong`
--

DROP TABLE IF EXISTS `cmon_thutuchanhchinhlienthong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_thutuchanhchinhlienthong` (
  `ID` double(22,0) NOT NULL,
  `THUTUCHANHCHINHID` double(22,0) NOT NULL,
  `CAPCOQUANQUANLYID` double(22,0) NOT NULL,
  `LOAIXULY` double(1,0) NOT NULL,
  `GHICHU` text,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(50) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(50) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_tinhtranghonnhan`
--

DROP TABLE IF EXISTS `cmon_tinhtranghonnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_tinhtranghonnhan` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_tongiao`
--

DROP TABLE IF EXISTS `cmon_tongiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_tongiao` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_trangthaidoanhnghiep`
--

DROP TABLE IF EXISTS `cmon_trangthaidoanhnghiep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_trangthaidoanhnghiep` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(200) NOT NULL,
  `MOTA` varchar(200) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_trangthaihoso`
--

DROP TABLE IF EXISTS `cmon_trangthaihoso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_trangthaihoso` (
  `ID` double(22,0) NOT NULL,
  `TRANGTHAI` varchar(200) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_trinhdochuyenmon`
--

DROP TABLE IF EXISTS `cmon_trinhdochuyenmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_trinhdochuyenmon` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` text NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `CHUYENMONID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_TDCM_CMON_CM_FK_I` (`CHUYENMONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_trinhdohocvan`
--

DROP TABLE IF EXISTS `cmon_trinhdohocvan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_trinhdohocvan` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(10) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `PHIENBAN` double(10,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_tthc2coquanquanly`
--

DROP TABLE IF EXISTS `cmon_tthc2coquanquanly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_tthc2coquanquanly` (
  `ID` double(22,0) NOT NULL,
  `SONGAYXULY` double(3,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `THUTUCHANHCHINHID` double(22,0) NOT NULL,
  `COQUANQUANLYID` double(22,0) NOT NULL,
  `LEPHI` double(22,0) DEFAULT '0',
  `PHI` double(22,0) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CMON_TT2CQ_CMON_CQQL_FK_I` (`COQUANQUANLYID`),
  KEY `CMON_TT2CQ_CMON_TTHC_FK_I` (`THUTUCHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_tthc2doituongsudung`
--

DROP TABLE IF EXISTS `cmon_tthc2doituongsudung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_tthc2doituongsudung` (
  `ID` double(22,0) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `THUTUCHANHCHINHID` double(22,0) NOT NULL,
  `LOAIDOITUONGID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_TT2DT_CMON_LDT_FK_I` (`LOAIDOITUONGID`),
  KEY `CMON_TT2DT_CMON_TTHC_FK_I` (`THUTUCHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_tuyencoquanhcsn`
--

DROP TABLE IF EXISTS `cmon_tuyencoquanhcsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_tuyencoquanhcsn` (
  `ID` double(22,0) NOT NULL,
  `MA` varchar(20) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_vaitro`
--

DROP TABLE IF EXISTS `cmon_vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_vaitro` (
  `ID` double(22,0) NOT NULL,
  `TEN` varchar(100) NOT NULL,
  `MOTA` text,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `DANHMUCUNGDUNGID` double(22,0) DEFAULT NULL,
  `MA` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_VT_CMON_HT_FK_I` (`DANHMUCUNGDUNGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_vanbanhuongdan`
--

DROP TABLE IF EXISTS `cmon_vanbanhuongdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_vanbanhuongdan` (
  `ID` double(22,0) NOT NULL,
  `NOILUUTRUID` double(12,0) NOT NULL,
  `TENTAILIEU` varchar(200) NOT NULL,
  `MOTA` text,
  `LOAITAILIEU` double(3,0) NOT NULL DEFAULT '1',
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `THUTUCHANHCHINHID` double(22,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_VBHD_CMON_TTHC_FK_I` (`THUTUCHANHCHINHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmon_ykientraodoi`
--

DROP TABLE IF EXISTS `cmon_ykientraodoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmon_ykientraodoi` (
  `ID` double(22,0) NOT NULL,
  `NOIDUNGYKIEN` text NOT NULL,
  `THOIGIANGUIYKIEN` datetime NOT NULL,
  `TRANGTHAI` double(1,0) NOT NULL DEFAULT '0',
  `NGUOINHANID` double(22,0) NOT NULL,
  `NGUOIGUIID` double(22,0) NOT NULL,
  `CHAID` double(22,0) DEFAULT NULL,
  `TIEUDE` text NOT NULL,
  `HOSOTTHCCONGID` double(22,0) NOT NULL,
  `NOILUUTRUID` double(22,0) DEFAULT NULL,
  `LOAI` double(1,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CMON_YKTD_CMON_YKTD_FK_I` (`CHAID`),
  KEY `CMON_YKTD_HOSOTHUTUC_FK_I` (`HOSOTTHCCONGID`),
  KEY `CMON_YKTD_CMON_TKND_NGUOINH__I` (`NGUOINHANID`),
  KEY `CMON_YKTD_CMON_TKND_FK_I` (`NGUOIGUIID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `csms_congdan`
--

DROP TABLE IF EXISTS `csms_congdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csms_congdan` (
  `ID` double(22,0) NOT NULL,
  `MA` double(20,0) NOT NULL,
  `ANH` longblob,
  `HO` varchar(40) NOT NULL,
  `DEM` varchar(100) DEFAULT NULL,
  `TEN` varchar(40) NOT NULL,
  `NGAYSINH` datetime DEFAULT NULL,
  `SOCMND` varchar(30) DEFAULT NULL,
  `NGAYCAPCMND` datetime DEFAULT NULL,
  `GHICHUCMND` text,
  `SOHOCHIEU` varchar(30) DEFAULT NULL,
  `NGAYCAPHOCHIEU` datetime DEFAULT NULL,
  `NGAYHETHANHOCHIEU` datetime DEFAULT NULL,
  `GHICHUHOCHIEU` text,
  `SOBAOHIEMYTE` varchar(30) DEFAULT NULL,
  `MASOTHUECANHAN` varchar(30) DEFAULT NULL,
  `DIACHITHUONGTRU` varchar(200) DEFAULT NULL,
  `DIACHIHIENNAY` varchar(200) DEFAULT NULL,
  `DIENTHOAICODINH` varchar(30) DEFAULT NULL,
  `DIENTHOAIDIDONG` varchar(30) DEFAULT NULL,
  `HOTENCHA` varchar(100) DEFAULT NULL,
  `HOTENME` varchar(100) DEFAULT NULL,
  `HOTENVOHOACCHONG` varchar(100) DEFAULT NULL,
  `SOHOKHAU` varchar(30) DEFAULT NULL,
  `LACHUHO` double(1,0) DEFAULT NULL,
  `NGAYTAO` datetime NOT NULL DEFAULT '1753-01-01 00:00:00',
  `NGUOITAO` varchar(100) NOT NULL,
  `NGAYSUA` datetime DEFAULT NULL,
  `NGUOISUA` varchar(100) DEFAULT NULL,
  `TINHTRANG` double(1,0) NOT NULL DEFAULT '1',
  `DAXOA` double(1,0) NOT NULL DEFAULT '0',
  `EMAIL` varchar(100) DEFAULT NULL,
  `SODINHDANHCHAID` double(22,0) DEFAULT NULL,
  `SODINHDANHVOHOACCHONGID` double(22,0) DEFAULT NULL,
  `DANTOCID` double(22,0) DEFAULT NULL,
  `DIACHIHIENNAYHUYENID` double(22,0) DEFAULT NULL,
  `DIACHIHIENNAYTINHID` double(22,0) DEFAULT NULL,
  `DIACHIHIENNAYXAID` double(22,0) DEFAULT NULL,
  `DIACHITHUONGTRUHUYENID` double(22,0) DEFAULT NULL,
  `DIACHITHUONGTRUTINHID` double(22,0) DEFAULT NULL,
  `DIACHITHUONGTRUXAID` double(22,0) DEFAULT NULL,
  `GIOITINHID` double(22,0) NOT NULL,
  `NGHENGHIEPID` double(22,0) DEFAULT NULL,
  `NOICAPCMNDID` double(22,0) DEFAULT NULL,
  `NOICAPHOCHIEUID` double(22,0) DEFAULT NULL,
  `NOISINHXAID` double(22,0) DEFAULT NULL,
  `QUANHECHUHOID` double(22,0) DEFAULT NULL,
  `QUOCTICHID` varchar(3) NOT NULL,
  `SODINHDANHMEID` double(22,0) DEFAULT NULL,
  `TAIKHOANNGUOIDUNGID` double(22,0) DEFAULT NULL,
  `TINHTRANGHONNHANID` double(22,0) DEFAULT NULL,
  `TONGIAOID` double(22,0) DEFAULT NULL,
  `TRINHDOCHUYENMONID` double(22,0) DEFAULT NULL,
  `TRINHDOHOCVANID` double(22,0) DEFAULT NULL,
  `DOANHNGHIEPID` double(22,0) DEFAULT NULL,
  `FAX` varchar(30) DEFAULT NULL,
  `WEBSITE` varchar(200) DEFAULT NULL,
  `NOISINHTINHID` double(22,0) DEFAULT NULL,
  `NOISINHHUYENID` double(22,0) DEFAULT NULL,
  `NOISINHCHITIET` varchar(200) DEFAULT NULL,
  `TENDAYDU` varchar(200) DEFAULT NULL,
  `THON` varchar(200) DEFAULT NULL,
  `TODANPHO` varchar(50) DEFAULT NULL,
  `LAODONGCHINH` double(1,0) DEFAULT NULL,
  `BIDANH` varchar(100) DEFAULT NULL,
  `NGUYENQUAN` text,
  `TENNOICAPHOCHIEU` text,
  `TTCHUYENDEN` text,
  `TTCHUYENDI` text,
  `CHUCVU` varchar(240) DEFAULT NULL,
  `NOILAMVIEC` text,
  `TENNGHENGHIEP` text,
  `BIETTIENGDANTOC` text,
  `BIETNGOAINGU` text,
  `LOAIHOKHAU` varchar(100) DEFAULT NULL,
  `GHICHUKHAC` text,
  PRIMARY KEY (`ID`),
  KEY `CSMS_CD_CMON_QHCH` (`QUANHECHUHOID`),
  KEY `CSMS_CD_CMON_DCHNX` (`DIACHIHIENNAYXAID`),
  KEY `CSMS_CD_CMON_NCHC` (`NOICAPHOCHIEUID`),
  KEY `CSMS_CD_CMON_TDHV` (`TRINHDOHOCVANID`),
  KEY `CSMS_CD_CMON_GT` (`GIOITINHID`),
  KEY `CSMS_CD_CMON_DCTTT` (`DIACHITHUONGTRUTINHID`),
  KEY `CSMS_CD_CMON_DCHNT` (`DIACHIHIENNAYTINHID`),
  KEY `CSMS_CD_CSMS_CD_1_FK_1_I` (`SODINHDANHCHAID`),
  KEY `CSMS_CD_CMON_NS` (`NOISINHXAID`),
  KEY `CSMS_CD_CMON_NCCMND` (`NOICAPCMNDID`),
  KEY `CSMS_CD_CMON_DCTTH` (`DIACHITHUONGTRUHUYENID`),
  KEY `CSMS_CD_CMON_DCTTX` (`DIACHITHUONGTRUXAID`),
  KEY `CSMS_CD_CMON_QT` (`QUOCTICHID`),
  KEY `CSMS_CD_CMON_DT` (`DANTOCID`),
  KEY `CSMS_CD_CMON_DCHNH` (`DIACHIHIENNAYHUYENID`),
  KEY `CSMS_CD_CMON_NN` (`NGHENGHIEPID`),
  KEY `CSMS_CD_CMON_TTHN` (`TINHTRANGHONNHANID`),
  KEY `CSMS_CD_CMON_TKND` (`TAIKHOANNGUOIDUNGID`),
  KEY `CSMS_CD_CMON_TG` (`TONGIAOID`),
  KEY `CSMS_CD_CMON_TDCM` (`TRINHDOCHUYENMONID`),
  KEY `CSMS_CD_CSMS_CD_FK_I` (`SODINHDANHMEID`),
  KEY `CSMS_CD_CSMS_CD_1_FK_I` (`SODINHDANHVOHOACCHONGID`),
  KEY `CSMS_CONGDAN_DOANHNGHIEP_FK` (`DOANHNGHIEPID`),
  KEY `CSMS_CONGDAN_NOISINH_TINH` (`NOISINHTINHID`),
  KEY `CSMS_CONGDAN_NOISINH_HUYEN` (`NOISINHHUYENID`),
  CONSTRAINT `CSMS_CD_CSMS_CD_1_FK` FOREIGN KEY (`SODINHDANHVOHOACCHONGID`) REFERENCES `csms_congdan` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_CSMS_CD_1_FK_1` FOREIGN KEY (`SODINHDANHCHAID`) REFERENCES `csms_congdan` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_CSMS_CD_FK` FOREIGN KEY (`SODINHDANHMEID`) REFERENCES `csms_congdan` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_DCHNH` FOREIGN KEY (`DIACHIHIENNAYHUYENID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_DCHNT` FOREIGN KEY (`DIACHIHIENNAYTINHID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_DCHNX` FOREIGN KEY (`DIACHIHIENNAYXAID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_DCTTH` FOREIGN KEY (`DIACHITHUONGTRUHUYENID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_DCTTT` FOREIGN KEY (`DIACHITHUONGTRUTINHID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_DCTTX` FOREIGN KEY (`DIACHITHUONGTRUXAID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_DT` FOREIGN KEY (`DANTOCID`) REFERENCES `cmon_dantoc` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_GT` FOREIGN KEY (`GIOITINHID`) REFERENCES `cmon_gioitinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_HC` FOREIGN KEY (`NOICAPHOCHIEUID`) REFERENCES `cmon_coquanquanly` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_NN` FOREIGN KEY (`NGHENGHIEPID`) REFERENCES `cmon_nghenghiep` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_NOICAPCMND` FOREIGN KEY (`NOICAPCMNDID`) REFERENCES `cmon_coquanquanly` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_QHGD` FOREIGN KEY (`QUANHECHUHOID`) REFERENCES `cmon_quanhegiadinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_TDCM` FOREIGN KEY (`TRINHDOCHUYENMONID`) REFERENCES `cmon_trinhdochuyenmon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_TDHV` FOREIGN KEY (`TRINHDOHOCVANID`) REFERENCES `cmon_trinhdohocvan` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_TG` FOREIGN KEY (`TONGIAOID`) REFERENCES `cmon_tongiao` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_TKND` FOREIGN KEY (`TAIKHOANNGUOIDUNGID`) REFERENCES `cmon_taikhoannguoidung` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CD_TTHN` FOREIGN KEY (`TINHTRANGHONNHANID`) REFERENCES `cmon_tinhtranghonnhan` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CONGDAN` FOREIGN KEY (`NOICAPCMNDID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CONGDAN_DOANHNGHIEP_FK` FOREIGN KEY (`DOANHNGHIEPID`) REFERENCES `brms_doanhnghiep` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CONGDAN_NOISINH` FOREIGN KEY (`NOISINHXAID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CONGDAN_NOISINH_HUYEN` FOREIGN KEY (`NOISINHHUYENID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSMS_CONGDAN_NOISINH_TINH` FOREIGN KEY (`NOISINHTINHID`) REFERENCES `cmon_donvihanhchinh` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exch_filedinhkem`
--

DROP TABLE IF EXISTS `exch_filedinhkem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exch_filedinhkem` (
  `id` int(11) NOT NULL,
  `tentailieudinhkem` varchar(3) DEFAULT NULL,
  `urltailieudinhkem` varchar(200) DEFAULT NULL,
  `tenfile` varchar(3) DEFAULT NULL,
  `hosotthccongid` int(11) DEFAULT NULL,
  KEY `exch_filed_hosothutuc_fk_i` (`hosotthccongid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exch_hosomotcua`
--

DROP TABLE IF EXISTS `exch_hosomotcua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exch_hosomotcua` (
  `id` int(11) NOT NULL,
  `ngaychuyen` date DEFAULT NULL,
  `masohoso` varchar(13) DEFAULT NULL,
  `maloaihoso` varchar(15) DEFAULT NULL,
  `madonvitiepnhan` varchar(15) DEFAULT NULL,
  `ngaynophoso` varchar(10) DEFAULT NULL,
  `ngayhentra` varchar(10) DEFAULT NULL,
  `hotennguoinop` varchar(90) DEFAULT NULL,
  `socmnd` varchar(15) DEFAULT NULL,
  `ngaysinh` varchar(10) DEFAULT NULL,
  `matinhthuongtru` varchar(10) DEFAULT NULL,
  `motadiachithuongtru` varchar(200) DEFAULT NULL,
  `gioitinh` double(1,0) DEFAULT NULL,
  `manguoitiepnhan` varchar(20) DEFAULT NULL,
  `tennguoitiepnhan` varchar(30) DEFAULT NULL,
  `donvicungcap` varchar(30) DEFAULT NULL,
  `trangthaixuly` double(1,0) DEFAULT NULL,
  `ngayxuly` date DEFAULT NULL,
  `loikhixuly` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exch_hosotructuyen`
--

DROP TABLE IF EXISTS `exch_hosotructuyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exch_hosotructuyen` (
  `id` int(11) NOT NULL,
  `ngaytrichxuat` date DEFAULT NULL,
  `maloaihoso` varchar(15) NOT NULL,
  `madonvitiepnhan` varchar(15) DEFAULT NULL,
  `hotennguoinop` varchar(90) DEFAULT NULL,
  `diachinguoinop` varchar(200) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `socmnd` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sodtdidong` varchar(15) DEFAULT NULL,
  `sodtcodinh` varchar(15) DEFAULT NULL,
  `gioitinh` double(1,0) DEFAULT NULL,
  `chusohuuhoso` varchar(200) DEFAULT NULL,
  `ngaydangkyhoso` date DEFAULT NULL,
  `noichuyenhoso` varchar(30) DEFAULT NULL,
  `trangthaixuly` double(1,0) DEFAULT NULL,
  `ngaychuyen` date DEFAULT NULL,
  `hosotthccongid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exch_ketquahoso`
--

DROP TABLE IF EXISTS `exch_ketquahoso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exch_ketquahoso` (
  `id` int(11) NOT NULL,
  `ngaychuyen` date DEFAULT NULL,
  `masohoso` varchar(13) DEFAULT NULL,
  `tennguoinhanketqua` varchar(90) DEFAULT NULL,
  `ngaynhanketqua` varchar(10) DEFAULT NULL,
  `lephihoso` double(9,0) DEFAULT NULL,
  `phixulyhoso` double(9,0) DEFAULT NULL,
  `ngayhoanthanh` varchar(19) DEFAULT NULL,
  `macanbotraketqua` varchar(20) DEFAULT NULL,
  `tencanbotraketqua` varchar(30) DEFAULT NULL,
  `donvicungcap` varchar(30) DEFAULT NULL,
  `trangthaixuly` double(1,0) DEFAULT NULL,
  `ngayxuly` date DEFAULT NULL,
  `loikhixuly` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exch_trangthaihoso`
--

DROP TABLE IF EXISTS `exch_trangthaihoso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exch_trangthaihoso` (
  `id` int(11) NOT NULL,
  `ngaychuyen` date DEFAULT NULL,
  `masohoso` varchar(13) DEFAULT NULL,
  `ngayhentra` varchar(10) DEFAULT NULL,
  `manguoixulyhientai` varchar(20) DEFAULT NULL,
  `tennguoixulyhientai` varchar(30) DEFAULT NULL,
  `tenphongbanxulyhientai` varchar(50) DEFAULT NULL,
  `ngaygioluanchuyen` varchar(19) DEFAULT NULL,
  `sogioyeucauxuly` double(4,0) DEFAULT NULL,
  `noidungyeucauxuly` varchar(300) DEFAULT NULL,
  `sogiothuchien` double(4,0) DEFAULT NULL,
  `trangthaihientai` double(4,0) DEFAULT NULL,
  `manguoixulyketiep` varchar(20) DEFAULT NULL,
  `tennguoixulyketiep` varchar(30) DEFAULT NULL,
  `tenphongbanxulyketiep` varchar(50) DEFAULT NULL,
  `trangthaiketiep` double(4,0) DEFAULT NULL,
  `donvicungcap` varchar(30) DEFAULT NULL,
  `trangthaixuly` double(1,0) DEFAULT NULL,
  `ngayxuly` date DEFAULT NULL,
  `loikhixuly` varchar(1000) DEFAULT NULL,
  `hosotthccongid` int(11) DEFAULT NULL,
  KEY `exch_trang_hosothutuc_fk_i` (`hosotthccongid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_danhsachjob`
--

DROP TABLE IF EXISTS `job_danhsachjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_danhsachjob` (
  `id` int(11) NOT NULL,
  `jobclass` varchar(100) DEFAULT NULL,
  `jobid` double(4,0) DEFAULT NULL,
  `jobname` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_logmail`
--

DROP TABLE IF EXISTS `job_logmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_logmail` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `hosotthccongid` double(15,0) DEFAULT NULL,
  `status` double(2,0) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_trangthaijob`
--

DROP TABLE IF EXISTS `job_trangthaijob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_trangthaijob` (
  `id` int(11) NOT NULL,
  `jobid` double(4,0) DEFAULT NULL,
  `jobname` varchar(100) DEFAULT NULL,
  `starttime` date DEFAULT NULL,
  `endtime` date DEFAULT NULL,
  `status` double(1,0) DEFAULT NULL,
  `runmode` double(1,0) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

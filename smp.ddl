/**********************************/
/* Table Name: 사용자 */
/**********************************/
CREATE TABLE COM_USER(
		USERNO                        		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '사용자번호',
		USERID                        		VARCHAR(20)		 NULL  COMMENT '아이디',
		USERNM                        		VARCHAR(20)		 NULL  COMMENT '이름',
		USERPW                        		VARCHAR(100)		 NULL  COMMENT '비밀번호',
		USERLOC                       		VARCHAR(100)		 NULL  COMMENT '사용자위치',
		USERTEL                       		VARCHAR(100)		 NULL  COMMENT '전화번호',
		USERROLE                      		CHAR(1)		 NULL  COMMENT '권한',
		PHOTO                         		VARCHAR(50)		 NULL  COMMENT '사진',
		DELETEFLAG                    		CHAR(1)		 NULL  COMMENT '삭제여부',
		USEREMAIL                     		VARCHAR(100)		 NULL  COMMENT '이메일'
) COMMENT='사용자';

/**********************************/
/* Table Name: 스터디 */
/**********************************/
CREATE TABLE STD_STUDY(
		STDNO                         		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '스터디번호',
		STDSTARTDATE                  		DATETIME		 NULL  COMMENT '시작시간',
		STDENDDATE                    		DATETIME		 NULL  COMMENT '끝시간',
		STDTITLE                      		VARCHAR(100)		 NULL  COMMENT '스터디이름',
		STDCATEGORI                   		VARCHAR(100)		 NULL  COMMENT '카테고리',
		STDMEMO                       		VARCHAR(100)		 NULL  COMMENT '스터디설명',
		STDMENU                       		VARCHAR(10)		 NULL  COMMENT '스터디메뉴',
		STDMEMLIMIT                   		INT(10)		 NULL  COMMENT '인원제한수',
		STDUPDATEDATE                 		DATETIME		 NULL  COMMENT '수정날짜',
		STDUPDATEUSER                 		INT(10)		 NULL  COMMENT '수정자',
		STDSTATUS                     		CHAR(1)		 NULL  COMMENT 'STDSTATUS',
		DELETEFLAG                    		CHAR(1)		 NULL  COMMENT '삭제여부'
) COMMENT='스터디';

/**********************************/
/* Table Name: TBL_BOARD */
/**********************************/
CREATE TABLE TBL_BOARD(
		BRDNO                         		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT 'BRDNO',
		BRDTITLE                      		VARCHAR(255)		 NULL  COMMENT 'BRDTITLE',
		BRDWRITER                     		VARCHAR(20)		 NULL  COMMENT 'BRDWRITER',
		BRDMEMO                       		VARCHAR(4000)		 NULL  COMMENT 'BRDMEMO',
		BRDDATE                       		DATETIME		 NULL  COMMENT 'BRDDATE',
		BRDHIT                        		INT(10)		 NULL  COMMENT 'BRDHIT',
		BRDDELETEFLAG                 		CHAR(1)		 NULL  COMMENT 'BRDDELETEFLAG'
) COMMENT='TBL_BOARD';

/**********************************/
/* Table Name: TBL_BOARDFILE */
/**********************************/
CREATE TABLE TBL_BOARDFILE(
		FILENO                        		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT 'FILENO',
		BRDNO                         		INT(10)		 NULL  COMMENT 'BRDNO',
		FILENAME                      		VARCHAR(100)		 NULL  COMMENT 'FILENAME',
		REALNAME                      		VARCHAR(30)		 NULL  COMMENT 'REALNAME',
		FILESIZE                      		INT(10)		 NULL  COMMENT 'FILESIZE'
) COMMENT='TBL_BOARDFILE';

CREATE TABLE `com_loginout` (
	`LNO` INT(10) NOT NULL AUTO_INCREMENT COMMENT '순번',
	`USERNO` INT(10) NULL DEFAULT NULL COMMENT '사용자번호',
	`LTYPE` CHAR(1) NULL DEFAULT NULL COMMENT '종류',
	`LDATE` DATETIME NULL DEFAULT NULL COMMENT '발생일자',
	PRIMARY KEY (`LNO`),
	INDEX `USERNO` (`USERNO`),
	CONSTRAINT `com_loginout_ibfk_1` FOREIGN KEY (`USERNO`) REFERENCES `com_user` (`USERNO`)
)
COMMENT='로그인히스토리'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8
;
/**********************************/
/* Table Name: 사용자 */
/**********************************/
CREATE TABLE COM_USER(
		USERNO                        		INT(10)		 NOT NULL AUTO_INCREMENT COMMENT '사용자번호',
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
		STDNO                         		INT(10)		 NOT NULL AUTO_INCREMENT COMMENT '스터디번호',
		USERNO                        		MEDIUMINT(10)		 NULL  COMMENT '사용자번호',
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
		BRDNO                         		INT(10)		 NOT NULL AUTO_INCREMENT COMMENT 'BRDNO',
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
		FILENO                        		INT(10)		 NOT NULL AUTO_INCREMENT COMMENT 'FILENO',
		BRDNO                         		INT(10)		 NULL  COMMENT 'BRDNO',
		FILENAME                      		VARCHAR(100)		 NULL  COMMENT 'FILENAME',
		REALNAME                      		VARCHAR(30)		 NULL  COMMENT 'REALNAME',
		FILESIZE                      		INT(10)		 NULL  COMMENT 'FILESIZE'
) COMMENT='TBL_BOARDFILE';

/**********************************/
/* Table Name: 멤버 */
/**********************************/
CREATE TABLE mem_member(
		STDNO                         		INT(10)		 NULL  COMMENT '스터디번호',
		USERNO                        		INT(10)		 NULL  COMMENT '사용자번호',
		MEMROLE                       		CHAR(5)		 NULL  COMMENT '멤버역할',
		MEMDATEFROM                   		DATETIME		 NULL  COMMENT '멤버가입일자',
		MEMDATEEND                    		DATETIME		 NULL  COMMENT '멤버탈퇴일자',
		DELETEFLAG                    		CHAR(1)		 NULL  COMMENT '삭제여부'
) COMMENT='멤버';


ALTER TABLE COM_USER ADD CONSTRAINT IDX_COM_USER_PK PRIMARY KEY (USERNO);

ALTER TABLE STD_STUDY ADD CONSTRAINT IDX_STD_STUDY_PK PRIMARY KEY (STDNO);

ALTER TABLE TBL_BOARD ADD CONSTRAINT IDX_TBL_BOARD_PK PRIMARY KEY (BRDNO);

ALTER TABLE TBL_BOARDFILE ADD CONSTRAINT IDX_TBL_BOARDFILE_PK PRIMARY KEY (FILENO);


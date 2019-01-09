/**********************************/
/* Table Name: ����� */
/**********************************/
CREATE TABLE COM_USER(
		USERNO                        		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '����ڹ�ȣ',
		USERID                        		VARCHAR(20)		 NULL  COMMENT '���̵�',
		USERNM                        		VARCHAR(20)		 NULL  COMMENT '�̸�',
		USERPW                        		VARCHAR(100)		 NULL  COMMENT '��й�ȣ',
		USERLOC                       		VARCHAR(100)		 NULL  COMMENT '�������ġ',
		USERTEL                       		VARCHAR(100)		 NULL  COMMENT '��ȭ��ȣ',
		USERROLE                      		CHAR(1)		 NULL  COMMENT '����',
		PHOTO                         		VARCHAR(50)		 NULL  COMMENT '����',
		DELETEFLAG                    		CHAR(1)		 NULL  COMMENT '��������',
		USEREMAIL                     		VARCHAR(100)		 NULL  COMMENT '�̸���'
) COMMENT='�����';

/**********************************/
/* Table Name: ���͵� */
/**********************************/
CREATE TABLE STD_STUDY(
		STDNO                         		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '���͵��ȣ',
		STDSTARTDATE                  		DATETIME		 NULL  COMMENT '���۽ð�',
		STDENDDATE                    		DATETIME		 NULL  COMMENT '���ð�',
		STDTITLE                      		VARCHAR(100)		 NULL  COMMENT '���͵��̸�',
		STDCATEGORI                   		VARCHAR(100)		 NULL  COMMENT 'ī�װ�',
		STDMEMO                       		VARCHAR(100)		 NULL  COMMENT '���͵𼳸�',
		STDMENU                       		VARCHAR(10)		 NULL  COMMENT '���͵�޴�',
		STDMEMLIMIT                   		INT(10)		 NULL  COMMENT '�ο����Ѽ�',
		STDUPDATEDATE                 		DATETIME		 NULL  COMMENT '������¥',
		STDUPDATEUSER                 		INT(10)		 NULL  COMMENT '������',
		STDSTATUS                     		CHAR(1)		 NULL  COMMENT 'STDSTATUS',
		DELETEFLAG                    		CHAR(1)		 NULL  COMMENT '��������'
) COMMENT='���͵�';

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
	`LNO` INT(10) NOT NULL AUTO_INCREMENT COMMENT '����',
	`USERNO` INT(10) NULL DEFAULT NULL COMMENT '����ڹ�ȣ',
	`LTYPE` CHAR(1) NULL DEFAULT NULL COMMENT '����',
	`LDATE` DATETIME NULL DEFAULT NULL COMMENT '�߻�����',
	PRIMARY KEY (`LNO`),
	INDEX `USERNO` (`USERNO`),
	CONSTRAINT `com_loginout_ibfk_1` FOREIGN KEY (`USERNO`) REFERENCES `com_user` (`USERNO`)
)
COMMENT='�α��������丮'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8
;
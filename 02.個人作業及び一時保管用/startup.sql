CREATE DATABASE IF NOT EXISTS BOOKMANAGER;
USE BOOKMANAGER

CREATE TABLE IF NOT EXISTS USER_TABLE(
-- ���p��ID
user_id int not null primary key auto_increment,
-- ���p�Җ�
user_name varchar(20) not null,
-- ���p�Җ��i�J�i�j
user_name_kana varchar(20) not null,
-- ���N����
birth date not null,
-- �d�b�ԍ�
tel varchar(20) not null,
-- �ݐЃt���O(0:�ݐ�, 1:�ސE)
enrollment_flg enum("0","1") default "0",
-- �o�^���i�����j
user_register_date datetime not null,
-- �ύX��
user_change_date datetime
);

CREATE TABLE IF NOT EXISTS ADMIN_TABLE(
-- �Ǘ���ID
admin_id int not null primary key auto_increment,
-- �Ǘ��҃p�X���[�h
admin_pass char(4) not null,
-- �Ǘ��Җ�
admin_name varchar(20) not null,
-- �Ǘ��Җ��i�J�i�j
admin_name_kana varchar(20) not null,
-- �ݐЃt���O 0:�ݐ� 1:�ސE
enrollment_flg enum("0","1") default "0",
-- �o�^���i����j
admin_register_date datetime not null,
-- �ύX��
admin_change_date datetime
);
-- �Ǘ��҃f�[�^�̓o�^�i10�����j
insert into ADMIN_TABLE(admin_pass,admin_name,admin_name_kana,admin_register_date) values ("0123","���c����","�~�c�_�P���X�P","2014/11/06 15:00:00");
insert into ADMIN_TABLE(admin_pass,admin_name,admin_name_kana,admin_register_date) values ("0123","�R��糋M��","���}�m�x�^�J��","2014/11/06 15:00:00");
insert into ADMIN_TABLE(admin_pass,admin_name,admin_name_kana,admin_register_date) values ("0123","�k�����u","�L�^�n���^�C�V","2014/11/06 15:00:00");
insert into ADMIN_TABLE(admin_pass,admin_name,admin_name_kana,admin_register_date) values ("0123","�n粗E��","���^�i�x���E�L","2014/11/06 15:00:00");
insert into ADMIN_TABLE(admin_pass,admin_name,admin_name_kana,admin_register_date) values ("0123","�|������","�^�P�E�`�L���E�w�C","2014/11/06 15:00:00");

CREATE TABLE IF NOT EXISTS BOOK_TABLE(
-- �}��ID
book_id int not null primary key auto_increment,
-- �^�C�g��
title varchar(20) not null,
-- ���
writer varchar(20) not null,
-- �c�݌�
stock int not null,
-- ���݌�
total_stock int not null,
-- �o�Ŏ�
company varchar(20) not null,
-- �o�ŔN��
year date not null,
-- ���i
price int not null,
-- �y�[�W��
page int not null,
-- �o�^���i�����j
book_register_date date not null,
-- �ύX��
book_change_date date,
-- �p���t���O�i0:�ۊǒ�,1:�p���ς݁j
discard_flg enum("0","1") default "0"
);

CREATE TABLE IF NOT EXISTS LEND_BACK_TABLE(
-- �݂��Ԃ�ID
lend_back_id int not null primary key auto_increment,
-- ���p��ID
user_id int not null,
-- �}��ID
book_id int not null,
-- �ݏo��
lend_day date not null,
-- �ԋp�\���
scheduled_back_day date not null,
-- �ݕԃt���O�i0:�݂��o����,1:�ԋp�ς݁j
lend_back_flg enum("0","1") default "0",
-- ���ԋp��
actual_back_day date
);

CREATE TABLE LEND_DATA_TABLE (

-- ���p��ID
user_id int not null,

-- �}��ID
book_id int not null,

-- �^�C�g��
title varchar(20) not null,

-- ���
writer varchar(20) not null,

-- �o�Ŏ�
company varchar(20) not null,

-- �c�݌�
stock int not null

);

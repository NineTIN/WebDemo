CREATE TABLE TB_BOARD (
IDX int unsigned NOT NULL auto_increment,
PARENT_IDX int,
TITLE varchar(100) NOT NULL,
CONTENTS varchar(4000) NOT NULL,
HIT_CNT int NOT NULL,
DEL_GB varchar(1) NOT NULL DEFAULT 'N',
CREA_DTM datetime DEFAULT NOW(),
CREA_ID varchar(30) NOT NULL,
PRIMARY KEY (IDX)
);

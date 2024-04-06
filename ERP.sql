create database DemoItem
use DemoItem
create table MfrMaster(mfr_Id int identity primary key,Mfrname nvarchar(20)
insert into MfrMaster values('UPL')
insert into MfrMaster values('IFFCO')
insert into MfrMaster values('SYNGETA')
insert into MfrMaster values('SMATCHEM')
insert into MfrMaster values('KRUSHIDHAN')
insert into MfrMaster values('VRUNDAVAN SEEDS')
insert into MfrMaster values('PARAM ARO SEEDS')
insert into MfrMaster values('GREENSTAR FERTILIZERS LTD')
insert into MfrMaster values('INDOGULF CROP SCIENCE LTD')

select * from MfrMaster

ALTER TABLE MfrMaster
ALTER COLUMN Mfrname nvarchar(40);

Create table ItemtypeMaster(item_id int identity primary key,Itemtype nvarchar(40))
insert into ItemtypeMaster values('FERTILIZER')
insert into ItemtypeMaster values('INSECTICIDE')
insert into ItemtypeMaster values('PESTICIDE')
insert into ItemtypeMaster values('SPARE PART')
insert into ItemtypeMaster values('WATER SOLUBLE')
insert into ItemtypeMaster values('OTHER SEEDS')

select * from ItemtypeMaster
CREATE TABLE Itemmaster (
    master_id int identity primary key,
    ItemName nvarchar(40),
    mfr_id int,
    item_id int,
    Description varchar(80),
    Godown nvarchar(30),
    pakage nvarchar(30),
    unit nvarchar(30),
    FOREIGN KEY (mfr_id) REFERENCES MfrMaster(mfr_Id),
    FOREIGN KEY (item_id) REFERENCES ItemtypeMaster(item_id)
);

select * from Itemmaster

truncate table Itemmaster
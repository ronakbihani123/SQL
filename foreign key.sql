drop table customer9;
drop table orders9;

create table customer9 (cid int primary key , cname varchar(20));
 
INSERT INTO customer9 (cid, cname)
VALUES
(10, 'Amit'),
(11, 'Rahul');

CREATE TABLE orders9 (
    oid INT PRIMARY KEY,
    city VARCHAR(20),
    cid INT,
    FOREIGN KEY (cid) REFERENCES customer9(cid)
);

insert into orders9 values(1009 , 'jaipur' , 10) , (10010 , 'goa' , 11) , (10011 , 'j k' , 10);
insert into orders9 values (10012, 'ranchi' , 90);

select * from customer9;
select * from orders9;

subquery , joins , normalization , subquery 
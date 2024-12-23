use task;
CREATE table task1 (
    id int,
    name VARCHAR(50),
    mobile varchar(50),
    dealership_id int,
    is_main_applicant int
);

insert into task1 (dealership_id,is_main_applicant) values (101,0);
insert into task1 (dealership_id,is_main_applicant) values (101,0);
insert into task1 (dealership_id,is_main_applicant) values (101,0);
insert into task1 (dealership_id,is_main_applicant) values (102,0);
insert into task1 (dealership_id,is_main_applicant) values (102,0);
insert into task1 (dealership_id,is_main_applicant) values (102,1);
insert into task1 (dealership_id,is_main_applicant) values (102,1);

select * from task1;

select dealership_id , count(is_main_applicant) as dealers from task1 group by dealership_id having dealers > 1;

select dealership_id ,sum(is_main_applicant) as lead_dealer from task1  GROUP BY dealership_id having lead_dealer = 0;
select dealership_id ,sum(is_main_applicant) as lead_dealer from task1  GROUP BY dealership_id having lead_dealer > 1;

-- more then one main applicant
select dealership_id,applicant  from (select dealership_id,sum(is_main_applicant) as applicant from task1 group by dealership_id) as lead_dealer where  applicant > 1;

-- no is main applicant
select dealership_id  from (select dealership_id,sum(is_main_applicant) as applicant from task1 group by dealership_id) as lead_dealer where  applicant = 0;

insert into task1 (dealership_id,is_main_applicant) values (103,1);
insert into task1 (dealership_id,is_main_applicant) values (103,1);
insert into task1 (dealership_id,is_main_applicant) values (103,0);

insert into task1 (dealership_id,is_main_applicant) values (104,0);
insert into task1 (dealership_id,is_main_applicant) values (104,0);
insert into task1 (dealership_id,is_main_applicant) values (104,0);

delete from task1 where dealership_id=104;
delete from task1 where dealership_id=103;

select id from task1 id=where dealership_id-dealership_id  ;
use employees;

select distinct title
from titles;

select e.last_name
from employees e
where e.last_name like 'E%'
  and e.last_name like '%E'
group by e.last_name;

select e.first_name, e.last_name
from employees e
where e.last_name like 'E%'
  and e.last_name like '%E'
group by e.last_name, e.first_name;

select e.last_name
from employees e
where e.last_name like '%q%'
  and e.last_name not like '%qu%'
group by e.last_name;

select count(*), e.last_name
from employees e
where e.last_name like '%q%'
  and e.last_name not like '%qu%'
group by e.last_name;

select *
from employees e where (e.first_name = 'Irena'
    or e.first_name = 'Vidya'
    or e.first_name = 'Maya')
group by e.gender;

select count(*), e.gender
from employees e
where (e.first_name = 'Irena'
    or e.first_name = 'Vidya'
    or e.first_name = 'Maya')
group by e.gender;



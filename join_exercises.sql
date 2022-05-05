use employees;

# current department manager
select d.dept_name                            as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
         join dept_manager dm on e.emp_no = dm.emp_no
         join departments as d on d.dept_no = dm.dept_no
where dm.to_date > curdate();


# asl;dkfj
select d.dept_name                            as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
         join dept_manager dm on e.emp_no = dm.emp_no
         join departments as d on d.dept_no = dm.dept_no
where dm.to_date > curdate()
  and e.gender = 'F';



# TODO: fix below selection and finish final part of the exercise



select t.title as 'title',
       count(t.emp_no)
from titles as t
         join employees as e on e.emp_no = t.emp_no
         join dep_emp de on e.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
where t.to_date > curdate()
  and d.dept_name = 'Customer Service'
  and de.to_date > curdate()
group by t.title;
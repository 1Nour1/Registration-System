# Registration-System
Student Registration System using PHP where users can crate an account, register to a specific department, then choose the corresponding courses.

Database
Implement the following basic schema using DDL statements
Department (dept_id , name , description)
User (user_id, email, username, password, registration_date, department_id)
Course (course_id , course_name , course_ description ,instructor_name, credit_hours, department_id)
Notes:
 Necessary primary and foreign key constraints must be added for all tables.
 Department and course tables must be filled with data (using DML statements).

A. Sign up :
1. Create a sign up form for a user to enter his email, username and password. 2. His user_id should be AutoIncrement and registration_date should be TIMESTAMP.
3. You should validate that username and password are not empty and the email’s format is correct.
4. Validate that the username isn’t used before using php.
5. After successful registration, you should redirect the user to another
page called chooseDepartment.php

B. Login :
After successful login (valid user_name and password), you have two options:
1. If the user has already chosen his department redirect him to courses.php.
2. If the user hasn’t chosen his department yet, you have to redirect him to chooseDepartment.php

Choose Department Page :
It should have
1. Welcome {UserName}.
2. Displaying list of departments to let the student selects his department. After selecting
department, you should redirect him to courses.php page.

Courses Page :
It should have
1. Welcome {UserName}.
2. Displaying table of courses for a student’s department which was selected in
chooseDepartment.php.

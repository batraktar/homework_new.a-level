from employee import Employee
from recruiter import Recruiter
from developer import Developer


if __name__ == "__main__":
    e1 = Employee('Will', 100, 'will@gmail.com')
    e2 = Employee('Den', 250, 'den@gmail.com')
    d = Developer('Rattan', 220, 'rattan@gmail.com', ['Python', 'SQL', 'HTML/CSS'])
    d2 = Developer('Max', 330, 'max@gmail.com', ['Python', 'C++', 'JS'])
    r = Recruiter('Nik', 123, 'nik@gmail.com')
    new_dev = d.__add__(d2)
    print(d, r,
          e1.check_salary(12),
          e2.check_salary(7),
          new_dev.tech_stack,
          e1.work(), d.work(),
          e1 > e2,
          d < d2)

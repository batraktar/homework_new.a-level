class Employee:
    def __init__(self, name, spd):
        self.name = name
        self.spd = spd

    def work(self):
        return f"I come to the office."

    def __str__(self):
        return f"Employee: {self.name}"

    def __eq__(self, other):
        return self.spd == other.spd

    def __lt__(self, other):
        return self.spd < other.spd

    def check_salary(self, days):
        return self.spd * days


class Recruiter(Employee):
    def work(self):
        return f"I come to the office and start coding."


class Developer(Employee):
    def __init__(self, name, spd, tech_stack):
        super().__init__(name, spd)
        self.tech_stack = tech_stack

    def __lt__(self, other):
        return self.tech_stack < other.tech_stack

    def __eq__(self, other):
        return self.tech_stack == other.tech_stack

    def work(self):
        return f"I come to the office and start hiring."


if __name__ == "__main__":
    e1 = Employee('Will', 100)
    e2 = Employee('Den', 250)
    d = Developer('Rattan', 220, ['Python', 'SQL', 'HTML/CSS'])
    d2 = Developer('Max', 330, ['Python', 'SQL', 'JS'])
    print(e1.check_salary(12))
    print(e2.check_salary(7))
    print(e1 > e2)
    print(e1.work())
    print(d.work())
    print(d)
    print(d < d2)

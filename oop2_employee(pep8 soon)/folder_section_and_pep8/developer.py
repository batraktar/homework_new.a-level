from employee import Employee

class Developer(Employee):
    def __init__(self, name, spd, tech_stack):
        super().__init__(name, spd)
        self.tech_stack = tech_stack

    def __str__(self):
        return f"{self.__class__.__name__}: {self.name}"

    def __lt__(self, other):
        return self.tech_stack < other.tech_stack

    def __eq__(self, other):
        return self.tech_stack == other.tech_stack

    @staticmethod
    def work():
        return f"I come to the office and start hiring."

    def __add__(self, other):
        name = f"{self.name} {other.name}"
        tech_stack = list(set(self.tech_stack + other.tech_stack))
        spd = max(self.spd, other.spd)
        return Developer(name, spd, tech_stack)
    
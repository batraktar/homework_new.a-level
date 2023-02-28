class Employee:
    def __init__(self, name, spd):
        self.name = name
        self.spd = spd

    @staticmethod
    def work():
        return f"I come to the office."

    def __str__(self):
        return f"{self.__class__.__name__}: {self.name}"

    def __eq__(self, other):
        return self.spd == other.spd

    def __lt__(self, other):
        return self.spd < other.spd

    def check_salary(self, days):
        return self.spd * days

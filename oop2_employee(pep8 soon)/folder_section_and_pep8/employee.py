class Employee:
    def __init__(self, name: str, spd: int, email):
        self.name = name
        self.spd = spd
        self.email = email

    @staticmethod
    def work():
        return f"I come to the office."

    def __str__(self):
        return f"{self.__class__.__name__}: {self.name}"

    def __eq__(self, other):
        return self.spd == other.spd

    def __lt__(self, other):
        return self.spd < other.spd

    def __le__(self, other):
        return self.spd <= other.spd

    def __gt__(self, other):
        return self.spd > other.spd

    def __ge__(self, other):
        return self.spd >= other.spd

    def __ne__(self, other):
        return self.spd != other.spd

    def check_salary(self, days):
        return self.spd * days

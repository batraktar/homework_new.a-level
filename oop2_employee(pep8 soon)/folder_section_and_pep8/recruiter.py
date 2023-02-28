from employee import Employee

class Recruiter(Employee):

    @staticmethod
    def work():
        return f"I come to the office and start coding."

    def __str__(self):
        return f"{self.__class__.__name__}: {self.name}"

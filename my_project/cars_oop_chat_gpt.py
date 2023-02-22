class Car:
    def __init__(self, make: str, model: str, year: int, weigth: int):
        self.make = make
        self.model = model
        self.year = year
        self.weight = weight

    @staticmethod
    def start():
        return f'The car is starting'

    @staticmethod
    def stop():
        return f'The car is stopping'


class ElectricCar(Car):
    def __init__(self, make: str, model: str, year: int, weight: int, battery_size: float):
        super().__init__(make, model, year, weight)
        self.battery_size = battery_size

    @staticmethod
    def charge():
        return f'The car is charging'


class HybridCar(Car):
    def __init__(self, make: str, model: str, year: int, weight: int, gas_tank_size: float, mpg: int):
        super().__init__(make, model, year, weight)
        self.gas_tank_size = gas_tank_size
        self.mpg = mpg

    @staticmethod
    def gas_up():
        return f'The car is filling up with gas'


if __name__ == "__main__":
    prius = HybridCar('Toyota', 'Prius', 2020, 1350, 11.5, 54)
    tesla = ElectricCar('Tesla', 'Model S', 2018, 2239, 100)
    print(prius.start())
    print(tesla.stop())
    print(prius.gas_up())
    print(tesla.charge())
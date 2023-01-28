def factory(x):
    def my_arr(array):
        new = []
        for i in array:
            new.append(i * x)
        return new

    return my_arr
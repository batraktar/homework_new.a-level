# Currying_functions_multiply_all_elements_in_an_array

def multipply_all(lst):
    def multiply(x):
        lst1 = []
        for i in lst:
            lst1.append(i*x)
        return lst1
    return multiply
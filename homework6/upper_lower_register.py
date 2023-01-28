def my_lower(low):
    return low.lower()

def my_upper(up):
    return up.upper()
random_str = [input()]
res_low = list(map(my_lower,random_str))
print(res_low)
res_up = list(map(my_upper,random_str))
print(res_up)
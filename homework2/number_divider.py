number = int(input())
a = 1
while a <= number:
    if number % a == 0:
        print(a)
    a += 1
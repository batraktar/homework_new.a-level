

fizz = int(input('Waiting your number 1: '))
buzz = int(input('Waiting your number 2: '))
suzz = int(input('Waiting your number 3: '))


for suzz in range(1, suzz+1):
    if not suzz % fizz and not suzz % buzz:
        print("FB", end=' ')
    elif not suzz % fizz:
        print("F", end=' ')
    elif not suzz % buzz:
        print("B", end=' ')
    else:
        print(suzz, end=' ')
f_read = open("suzz.txt", 'r')
f_write = open("suzz.txt", 'w')
for line in f_read:
    number = line.split()
    fizz = int(number[0])
    buzz = int(number[1])
    suzz = int(number[2])

    result = ''

    for i in range(1, suzz + 1):
        if not i % fizz and not i % buzz:
            result += 'FB'
        elif not i % fizz:
            result += 'F'
        elif not i % buzz:
            result += 'B'
        else:
            result = result + str(i) + ' '
        result += "\n"
f_read.close()


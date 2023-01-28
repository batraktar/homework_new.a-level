#Кожен пише суму списку за допомогою for та while

ls1 = int(input("Від якого? \n"))
ls2 = int(input("До якого? \n"))
sl = 0

while ls1 < ls2+1:
    print(ls1)
    sl += ls1
    ls1 += 1
print(f"Весь список чисел:{ls1-1} \nЇх сума: {sl}")


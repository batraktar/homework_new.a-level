#Перевірити, чи є число не парним, ділиться чи на три і на п'ять одночасно, але так, щоб не ділитися на 10

n = int(input("Your number: \n"))

if n % 2 and not n % 3 and not n % 5 and n % 10:
    print("Yes!\nThat's it!")
else:
    print("Sorry\nThat's not it\n😢")
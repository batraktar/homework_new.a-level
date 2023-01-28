thousand = 1000
five_hundred = 500
two_hundred = 200
one_hundred = 100
fifty = 50
twenty = 20
ten = 10
one = 1


max_bills = 10
max_bills_total = (one + ten + twenty + fifty + one_hundred + two_hundred + five_hundred) * max_bills

thousand_uah = 0
five_hundred_uah = 0
two_hundred_uah = 0
one_hundred_uah = 0
fifty_uah = 0
twenty_uah = 0
ten_uah = 0
one_uah = 0

money = False

cash = int(input("Надрукуй суму, яка тобі потрібна: "))

if cash > max_bills_total:
    thousand_total = (cash - max_bills_total)//thousand
    cash = cash - thousand_total * thousand
    if cash % max_bills_total > 0:
        thousand_total += 1
        cash -= thousand

for i_first in range(max_bills, -1, -1):
    if money:
        break
    for i_tens in range(max_bills, -1, -1):
        if money:
            break
        for i_twenties in range(max_bills, -1, -1):
            if money:
                break
            for i_fifties in range(max_bills, -1, -1):
                if money:
                    break
                for i_one_hundreds in range(max_bills, -1, -1):
                    if money:
                        break
                    for i_two_hundreds in range(max_bills, -1, -1):
                        if money:
                            break
                        for i_five_hundreds in range(max_bills, -1, -1):
                            if money:
                                break
                            sum_cash = i_first * one + i_tens * ten + i_twenties * twenty + i_fifties * fifty + i_one_hundreds * one_hundred + i_two_hundreds * two_hundred + i_five_hundreds * five_hundred
                            if sum_cash == cash:
                                money = True
                            one_uah = i_first
                            ten_uah = i_tens
                            twenty_uah = i_twenties
                            fifty_uah = i_fifties
                            one_hundred_uah = i_one_hundreds
                            two_hundred_uah = i_two_hundreds
                            five_hundred_uah = i_five_hundreds
print(f"Ти отримуєш наступні купюри: \n"
      f"{one_uah} * 1 гривня(Володимир Великий), \n"
      f"{ten_uah} * 10 гривень(Іван Мазепа), \n"
      f"{twenty_uah} * 20 гривень(Іван Франко), \n"
      f"{fifty_uah} * 50 гривень(Михайло Грушевський), \n"
      f"{one_hundred_uah} * 100 гривень(Тарас Шевченко), \n"
      f"{two_hundred_uah} * 200 гривень(Леся Українка), \n"
      f"{five_hundred_uah} * 500 гривень(Григорій Сковорода), \n"
      f"{thousand_uah} * 1000 гривень(Володимир Вернадський), \n")
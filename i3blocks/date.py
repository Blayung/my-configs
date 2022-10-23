#!/bin/python3
from datetime import datetime

#temp=date.today().weekday()
#if temp==0:
#    weekday='Poniedziałek'
#elif temp==1:
#    weekday='Wtorek'
#elif temp==2:
#    weekday='Środa'
#elif temp==3:
#    weekday='Czwartek'
#elif temp==4:
#    weekday='Piątek'
#elif temp==5:
#    weekday='Sobota'
#elif temp==6:
#    weekday='Niedziela'

print(f"{datetime.now().strftime('%d/%m/%Y, %A - %X')}")

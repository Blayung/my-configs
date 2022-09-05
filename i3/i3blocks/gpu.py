#!/bin/python3
from subprocess import check_output
import lxml
from bs4 import BeautifulSoup

xmlData=BeautifulSoup(check_output(["nvidia-smi","-q","-x"]),"xml")

gpu=list(str(xmlData.find('gpu_util')))
mem=list(str(xmlData.find('memory_util')))

i=1
read=False
final1=""
for _ in range(len(gpu)-1):
    if gpu[i]==">":
        read=True
    elif gpu[i]=="<":
        break
    elif read and gpu[i]!=' ':
        final1+=gpu[i]
    i+=1

i=1
read=False
final2=""
for _ in range(len(mem)-1):
    if mem[i]==">":
        read=True
    elif mem[i]=="<":
        break
    elif read and mem[i]!=' ':
        final2+=mem[i]
    i+=1

#print(f"{final1}, {final2}")
print(final1)

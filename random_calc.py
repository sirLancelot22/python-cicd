#!/usr/bin/env python3
import random
import time

while True:
    a = random.randint(1, 100)
    b = random.randint(1, 100)
    op = random.choice(['+', '-', '*', '/'])
    
    if op == '+':
        result = a + b
    elif op == '-':
        result = a - b
    elif op == '*':
        result = a * b
    else:
        result = round(a / b, 2) if b != 0 else '∞'
    
    print(f"{a} {op} {b} = {result}", flush=True)
    time.sleep(5)

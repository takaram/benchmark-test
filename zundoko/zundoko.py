from random import choice

def zundoko():
    zundoko = ["ズン", "ドコ"]
    target = ["ズン", "ズン", "ズン", "ズン", "ドコ"];
    history = []
    n = len(zundoko)
    m = len(target)

    while history != target:
        next = choice(zundoko)
        print(next, end="")

        if len(history) >= m:
            history.pop(0)
        history.append(next)
    print("キヨシ！")

for i in range(10000):
    zundoko()

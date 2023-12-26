a=10
print(a)

def f():
  global x
  print(x)

f()

x=25#전역
f()
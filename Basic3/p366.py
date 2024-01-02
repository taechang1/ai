'''
f=open("new_file1.txt","a",encoding="utf-8")

names=["이순신","김희수"]


for name in names:
  f.write(name+"\n")


print("파일 쓰기 완료")
f.close()
'''
f=open("new_file1.txt","r",encoding="utf-8")

#lines=f.readlines()
#line=f.readline()
#print("파일 쓰기 완료")
#print(lines)
while True:
  line=f.readline()
  if not line:break
print(line)
f.close()



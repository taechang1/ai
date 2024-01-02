#csv 파일처리
import csv
'''
file_name="./Basic3/weater.csv"
f=open(file_name,"r")
lines=csv.reader(f)
for line in lines:
  print(line)
f.close()

file_name="./Basic3/weater.csv"
f=open(file_name,"r")
lines=csv.reader(f)
print(next(lines))
print(next(lines))
f.close()

file_name="./Basic3/weater.csv"
f=open(file_name,"r")
lines=csv.reader(f)
next(lines)#열 이름 (즉 제목명)을 구해서 제거하기
for line in lines:
  if line[1]=="2023-12-27 0:00":
      result=line[2]
      print(result)
f.close()
'''

read_file_name="./Basic3/weater.csv"
write_file_name="./Basic3/weater._온도csv"
rf=open(read_file_name,"r")
wf=open(write_file_name,"w")
lines=csv.reader(rf)
wr=csv.reader(wf)
next(lines)#열 이름 (즉 제목명)을 구해서 제거하기
for line in lines:
  if line[1]!="2023-12-27":
      result=line[2]
      print(result)
rf.close()
wf.close()
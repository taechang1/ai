import csv

rf=open("./Basic4/a.csv","r")
wf=open("./Basic4/a.csv","w",newline="")

r=csv.reader(rf)
w=csv.writer(wf)

for i in range(3):
    line=next(r)
    w.writerow(line)
 
    r.close
    w.close

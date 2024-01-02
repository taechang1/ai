'''

import json

member={
         "id":"swhong",
         "name":"홍성우",
         "age":23,
         "history":[
              {"data":"2021-03-15","route":"mobile"},
              {"date":"2020-06-23","route":"pc"}]
      }

string=json.dumps(member,ensure_ascii=False,indent=4)
print(string)
print(type(string))
'''
#***중요함 파이션의 딕셔너리 json파일로 만들기(저장,쓰기)


import json

k={
         "id":"kim",
         "name":"김유신",
         "age":25,
         "history":[
              {"data":"2021-03-15","route":"mobile"},
              {"date":"2020-06-23","route":"pc"}]
      }

with open("./Basic4/a/member.json","a",encoding="utf-8")as f:
  json.dump(k,f,ensure_ascii=False,indent=4)
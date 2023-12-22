#244page c6-2 문제 풀어보기
scores={"김채린":85,"박수정":98,"함소희":94,"안예린":90,"연수진":93}
sum=0
for key in scores:
  sum=sum+scores[key]
  print("%s:%d%"()%(key,scores[key]))
avg=sum/len(scores)
print("합계:%d,평균:%2f%(key,scores[key])")
#c6-4
words={"꽃":"flower","나비":"butterfly","학교":"school","자동차":"car","비행기":"airplane"}
print("<영어 단어 맞추기>")
for kor in words:
  input_words=input("'%s'에 해당되는 영어 단어를 입력해주세요:"%kor)
  if words[kor]==input_words:
    print("정답")
  else:
    print("오답")

#온라인 서점의 책 결재 금액
price=20000
discount=10
delivery=3000
if delivery>=2000:
  print("비싸다")
  delivery=delivery*(1-0.02)
else: 
  print("저렴하다")

pay=price-(price*(discount/100))+delivery
print(f"책 값은 {price},할인율은{discount}%")
print(f"배송료 {delivery},결제금액은{int(pay)}%")



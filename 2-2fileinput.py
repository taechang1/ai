import cv2 as cv # opencv 사용
import sys #운영체제 사용

img=cv.imread('scoccer.jpg')

if img is None:
    sys.exit('파일을 찾을수 없습니다')

cv.imshow('Image display', img)

cv.waitKey()  #멈추기
cv.destroyAllWindows() # 닫기

#연습문제 이미지 2개를 화면보이기
img1=cv.imread()
img2=cv.imread()
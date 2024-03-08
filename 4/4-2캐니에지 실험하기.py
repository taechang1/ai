#4-2캐니에지 실험하기
#거짓긍증을 줄이기 위해 없는 에지를 그려주느것
import cv2 as cv

img=cv.imread('scoccer.jpg')

gray= cv.cvtColor(img,cv.COLOR_BGR2GRAY)

canny1=cv.Canny(gray, 50, 150)
canny2=cv.Canny(gray, 100, 200)

cv.imshow('Orignibal', gray)
cv.imshow('canny1', canny1)
cv.imshow('canny2', canny2)


cv.waitKey()
cv.destroyAllWindows()
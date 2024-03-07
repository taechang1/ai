#4-3 예지맵에세 경계선 찾기
#거짓긍증을 줄이기 위해 없는 에지를 그려주느것
import cv2 as cv
import numpy as np

img=cv.imread('scoccer.jpg')
gray= cv.cvtColor(img,cv.COLOR_BGR2GRAY)
#에지맵에서 임계값 이상인 경계선만을 취한다
canny=cv.Canny(gray, 100, 200)
#경계선을 찾는다
# find contours(영상,경계선을 찾는 방식 (바깥쪽 경계선만 찾는다),경계선 표현하는 방식)
contour,hierarchy=cv.findContours(canny, cv.RETR_LIST, cv.CHAIN_APPROX_SIMPLE)

lcontour=[]
for i in range(len(contour)):
    if contour[i].shape[0]>100:
        lcontour.append(contour[i])
#영상에 경계선을그린다 -1은 모든 경계선을 그린다
cv.drawContours(img,lcontour,-1, (0,100),4)

cv.imshow('Orignibal', img)
cv.imshow('canny', canny)


cv.waitKey()
cv.destroyAllWindows()

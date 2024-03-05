import cv2 as cv
import sys

img=cv.imread('girl_laughing.jpg')
if img is None:
    sys.exit('파일을 찾을수 없습니다')

cv.rectangle(img, (830,30),(1000,200),(0,0,255),2)
#직사각형 그림이미지 직사각형의 왼쪽위 좌표 아래 오른쪽 좌표 색 두깨
cv.putText(img, 'laugh', (1000,200), cv.FONT_HERSHEY_SIMPLEX, 1, (255,0,0),2)
#글짜쓰기 (이미지,글자,위치,폰트체,글자크기,색깔,글자 두께)

cv.circle(img,(900,120),100,(0,250,0),2)
#원(이미지,중심점, 반지름 ,색,두께)
cv.imshow('Draw', img)
cv.waitKey()
cv.destroyWindow()
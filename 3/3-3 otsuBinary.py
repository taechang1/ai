#3-3 otsuBinary.py
#명암 영상을 이진화 영상으로 바꾸기
# 바꾸는 이유 용량 줄이고 경계선 명획히 하기 위해
#오추 알고리즘 T(임계점)를 찾아서 t보다 크면 1 자긍면 0
import cv2 as cv
import sys
img= cv.imread('soccer.jpg')
t,bin_img=cv.threshold(img[:,:,2],0,255,cv.THRESH_BINARY, cv.THRESH_OTSU )
print('오츄알고리즘이 찾은 최적임계값',t)

cv.imshow('R channl', img[:,:,2])
cv.imshow('R channel binarization',bin_img)

cv.waitKey()
cv.destroyWindow()
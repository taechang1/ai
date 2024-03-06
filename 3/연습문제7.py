# 3-7컨볼루션적용가우시안스무딩과엠모싱하기.py
import cv2 as cv
import numpy as np

img = cv.imread('soccer.jpg')
img=cv.resize( img, dsize=(0,0), fx=0.4, fy=0.4)
gray = cv.cvtColor( img, cv.COLOR_BGR2GRAY )
cv.putText( gray, 'soccer', (10,20), cv.FONT_HERSHEY_SIMPLEX, 0.7, (255,255,255), 2)
cv.imshow( 'Original', gray)

# GaussianBlur( 영상, 필터의크기, 표준편차 0.0으로 하면 필터크기를 보고 자동 추정)
smooth = np.hstack( (cv.GaussianBlur(gray, (5,5), 0.0),
                     cv.GaussianBlur(gray, (9,9), 0.0),
                     cv.GaussianBlur(gray, (15,15), 0.0)  ))
median_smooth = np.hstack( (cv.medianBlur(gray, 5),
                            cv.GaussianBlur(gray,9),
                            cv.GaussianBlur(gray,15)  ))

cv.imshow('GaussianBlur Smooth', smooth)
cv.imshow('Median Smooth', median_smooth)                   

cv.waitKey() 
cv.destroyAllWindows()



import cv2 as cv # opencv 사용
import sys #운영체제 사용

img=cv.imread('scoccer.jpg')

if img is None:
    sys.exit('파일을 찾을수 없습니다')

gray=cv.cvtColor(img,cv.COLOR_BGR2GRAY)
hsv=cv.cvtColor(img,cv.COLOR_BGR2GRAY)
gray_small=cv.resize(gray, dsize=(0,0),fx=0.5,fy=0.5)
img_small=cv.resize(gray, dsize=(0,0),fx=0.6,fy=0.7)

cv.imwrite('scoccer_gray.jpg', gray)
cv.imwrite('scoccer_gray_small.jpg', gray_small)
cv.imwrite('scoccer_gray.jpg', hsv)
cv.imwrite('scoccer_img_small.jpg', gray_small)


cv.imshow('Color image', img)
cv.imshow('Gray image', gray)
cv.imshow('Gray image',gray_small)
cv.imshow('Hsv image', hsv)
cv.imshow('img small',img_small)


cv.waitKey()
cv.destroyAllWindows()

#연습문제 4
img=cv.imread('scoccer.jpg')
for i in [0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0]:
    img_small_size=cv.resize(img, dsize=(0,0),fx=i,fy=i)
    cv.imshow('Color image', img_small_size)
    cv.waitKey()
    cv.destroyAllWindows()
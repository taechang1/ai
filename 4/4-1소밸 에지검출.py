#4-1소밸 에지검출
import cv2 as cv

img=cv.imread('scoccer.jpg')
gray= cv.cvtColor(img,cv.COLOR_BGR2GRAY)
#방향의 연산을 적용
#cv.Sobel(영상,32비트실스맵을 저장 x방향연산자사용,3x3 크기)
grad_x=cv.Sobel(gray, cv.CV_32F, 1, 0,ksize=3)
#
grad_y=cv.Sobel(gray, cv.CV_32F, 0, 1,ksize=3)
#음수가 포함된 맵에 절대값을 취해 양수로 변환한다
#convertScaleAbs() 8비트형인 CV_8U(numpy의 unit8과 같음)

sobel_x=cv.convertScaleAbs(grad_x)
sobel_y=cv.convertScaleAbs(grad_y)

edge_strength=cv.addWeighted(sobel_x,0.5, sobel_y, 0.5, 0)

cv.imshow('Original', gray)
cv.imshow('soblex', sobel_x)
cv.imshow('sobley', sobel_y)
cv.imshow('edge_strength',edge_strength)

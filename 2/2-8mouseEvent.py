#이벤트란 사용자가 동작하는 것을 프로그램이 받아서 처리하기
# 콜백함수 callback- f리스너와 비슷함: 이벤트 발생한ㄴ 것을 처리하는 함수

import cv2 as cv
import sys
img= cv.imread('girl_laughing.jpg')

if img is None:
    sys.exit('파일을 찾을수 없습니다')
#사용자함수 정의
def draw(event,x,y,flags,param):
    global ix,iy #전역 변수
    
    if event== cv.EVENT_LBUTTONDOWN:
        ix,iy=x,y
    elif event== cv.EVENT_LBUTTONUP:
        cv.rectangle(img, (ix,iy),(x,y), (0,0,255),2)
    cv.imshow('Draw', img)
    
cv.namedWindow('Draw') # 원도우창의 이름은 Drow라고 정의함
cv.imshow('Draw', img)

cv.setMouseCallback('Draw', draw)
#원도우창 Draw에서 마우스 이벤트가 발생하면 draw 함수로 호출해라

while True:
    if cv.waitKey(1)==ord('q'):
        cv.destroyAllWindows()
        break
import cv2 as cv
import sys

cap = cv.VideoCapture(0, cv.CAP_DSHOW)
if not cap.isOpened() :
    sys.exit('카메라 연결 실패')
    
while True:
    ret,frame=cap.read()
    
    if not ret:
        print('프레임 획득에 실패하여 루프를 빠집니다')
        break
    
    cv.imshow('Video display', frame)
    
    key=cv.waitKey(1)
    if key== ord('q'):
        break

cap.replease()
cv.destroyAllWindows()

mode='c' #연습문제5 추가 코드 mode변수에 기본값 c를 넣음

while True:
    ret, frame = cap.read()
    
    if not ret:
        print('프레임 획득에 실패하여 루프를 빠집니다')
        break
    if mode =='c': # 연습문제 5 추가코드 
      cv.imshow('Video display',frame)
    elif mode =='g':
        gray= cv.cvtColor(frame,cv.COLOR_BGR2GRAY )
        cv.imshow('Video display', gray)
    
    key= cv.waitKey(1)
    if key ==ord('q'):
        break
    elif key ==ord('g'):
        mode='g'
    elif key ==ord('c'):
        mode='c'
        
cap.release()
cv.destroyAllWindows()

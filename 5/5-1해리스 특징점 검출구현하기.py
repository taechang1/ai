import cv2 as cv
import numpy as np

img=np.array([[0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,1,0,0,0,0,0,0],
              [0,0,0,1,1,0,0,0,0,0],
              [0,0,0,1,1,1,0,0,0,0],
              [0,0,0,1,1,1,1,0,0,0],
              [0,0,0,1,1,1,1,1,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0]],dtype=np.float32)

ux=np.array([[-1,0,1]])
uy=np.array([-1,0,1]).transpose()
k=cv.getGaussianKernel(3,1)
g=np.outer(k,k.transpose())

dy=cv.filter2D(img,cv.CV_32F,uy)
dx=cv.filter2D(img,cv.CV_32F,ux)
dyy=dy*dy
dxx=dx*dx
dyx=dy*dx
gdyy=cv.filter2D(dyy,cv.CV_32F,g)
gdxx=cv.filter2D(dxx,cv.CV_32F,g)
gdyx=cv.filter2D(dyx,cv.CV_32F,g)
C=(gdyy*gdxx-gdyx*gdyx)-0.04*(gdyy+gdxx)*(gdyy+gdxx)

for j in range(1,C.shape[0]-1):      # 비최대 억제
    for i in range(1,C.shape[1]-1):
        if C[j,i]>0.1 and sum(sum(C[j,i]>C[j-1:j+2,i-1:i+2]))==8:
            img[j,i]=9         # 특징점을 원본 영상에 9로 표시
                
np.set_printoptions(precision=2)
print('dy==>\n', dy) 
print('dx==>\n', dx) 
print('dyy==>\n' dyy) 
print('dxx==>\n',dxx) 
print('dyx==>\n',dyx) 
print('gdyy==>\n', gdyy) 
print('gdxx==>\n',gdxx) 
print('gdyx==>\n',gdyx) 
print('C==>\n', C)               # 특징 가능성 맵 
print('img==>\n', img)   

popping=np.zeros([160,160],np.uint8)   # 화소 확인 가능하게 16배로 확대
for j in range(0,160):
    for i in range(0,160):
        popping[j,i]=np.uint8((C[j//16,i//16]+0.06)*700)  

cv.imshow('Image Display2',popping)    
cv.waitKey()
cv.destroyAllWindows()
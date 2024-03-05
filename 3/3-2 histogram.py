#3-2 histogram.py
#cv c:>로 가서 pip install matplotlib 설치해 주세요

import cv2 as cv
import matplotlib.pyplot as plt

img= cv.imread('soccer.jpg')
h=cv.calcHist([img], [2], None, [256], [0,256])
plt.figure( )
plt.plot(h,color='r',linewidth=1)


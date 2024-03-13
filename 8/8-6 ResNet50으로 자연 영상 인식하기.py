#8-6 ResNet50으로 자연 영상 인식하기
import cv2 as cv
import numpy as np
from tensorflow.keras.applications.resnet50 import ResNet50,preprocess_input,decode_predictions

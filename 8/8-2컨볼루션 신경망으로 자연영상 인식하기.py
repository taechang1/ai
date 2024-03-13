# 8-2 컨볼루션 신경망으로 자연영상 인식하기 
import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds
import matplotlib.pyplot as plt

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv2D,MaxPooling2D,Flatten,Dropout,Dense
from tensorflow.keras.optimizers import Adam

(x_train,y_train),(x_test,y_test)=ds.cifar10.load_data()
print( '데이터셋 모양==>' , x_train, x_test )

x_train=x_train.astype(np.float32)/255.0
x_test=x_test.astype(np.float32)/255.0
y_train=tf.keras.utils.to_categorical(y_train,10)
y_test=tf.keras.utils.to_categorical(y_test,10)

cnn=Sequential()
cnn.add(Conv2D(32,(3,3),activation='relu',input_shape=(32,32,3)))
cnn.add(Conv2D(32,(3,3),activation='relu'))
cnn.add(MaxPooling2D(pool_size=(2,2)))
cnn.add(Dropout(0.25)) #341page 약 25%는 버려라 과잉적합을 피하기 위해서  
cnn.add(Conv2D(64,(3,3),activation='relu'))
cnn.add(Conv2D(64,(3,3),activation='relu'))
cnn.add(MaxPooling2D(pool_size=(2,2)))
cnn.add(Dropout(0.25))
cnn.add(Flatten())
cnn.add(Dense(units=512,activation='relu'))
cnn.add(Dropout(0.5))
cnn.add(Dense(units=10,activation='softmax'))

cnn.compile(loss='categorical_crossentropy',optimizer=Adam(learning_rate=0.001),metrics=['accuracy']) 
hist = cnn.fit(x_train,y_train,batch_size=128,epochs=100,validation_data=(x_test,y_test),verbose=2)
                                    
res=cnn.evaluate(x_test,y_test,verbose=0) 
print('정확률=',res[1]*100)


plt.plot( hist.history['accuracy'],'r--')
plt.plot( hist.history['val_accuracy'],'r')

plt.title('Accuracy graph')

plt.xlabel('epochs')  #"학습횟수
plt.ylabel('accuracy') #정확률
plt.legend(['train', 'test'])
plt.grid()
plt.show()

plt.plot( hist.history['loss'])
plt.plot( hist.history['val_loss'])
plt.title('Loss graph')
plt.xlabel('epochs')  #"학습횟수
plt.ylabel('loss') #손실
plt.legend(['train', 'test'])
plt.grid()
plt.show()
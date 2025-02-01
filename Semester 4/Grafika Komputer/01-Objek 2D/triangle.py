import numpy as np
import cv2

blue = 255, 0,0
green = 0,255,0
red = 0,0,255
white = 20,121,23

window = np.zeros((500,500,3),dtype='uint8')

koordinat1= (250,125)
koordinat2= (125,375)
koordinat3= (375,375)

cv2.circle(window, koordinat1, 1, red,-1)
cv2.circle(window, koordinat2, 10, green,-1)
cv2.circle(window, koordinat3, 10, blue,-1)
triangle_point = np.array([koordinat1,koordinat2,koordinat3])
cv2.drawContours(window, [triangle_point],0,white,-1)

cv2.imshow ("Dajjal", window)
cv2.waitKey(0)
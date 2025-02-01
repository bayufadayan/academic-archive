import numpy as np
import cv2

jendela = np.zeros((500,500,3), dtype='uint8')
jendela[:] = (150,200,0)

cv2.imshow("Menggambar 2D", jendela)
cv2.waitKey(0)

# Penjelasan Kodingan 
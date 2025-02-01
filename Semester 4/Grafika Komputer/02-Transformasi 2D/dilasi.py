import numpy as np
import cv2

jendela = np.zeros((1000,1000,3),dtype='uint8')

persegi = cv2.rectangle(jendela,(125,125),(375,375),
                        (255,255,0),5)
M = np.float32([[2,0,0],[0,2,0]])
dilasi = cv2.warpAffine(persegi,M,(persegi.shape[1],
                                      persegi.shape[0]))

cv2.imshow("Dilasi", dilasi)
cv2.imshow("Persegi",jendela)
cv2.waitKey(0)
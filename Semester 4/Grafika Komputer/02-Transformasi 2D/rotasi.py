import numpy as np
import cv2

jendela = np.zeros((500,500,3),dtype='uint8')

persegi = cv2.rectangle(jendela,(125,125),(375,375),
                        (255,255,255),5)
M = cv2.getRotationMatrix2D((250,250), 45, 1.0)
rotasi = cv2.warpAffine(persegi,M,(persegi.shape[1],
                                    persegi.shape[0]))

# lingkaran = np.zeros_like(jendela)
# lingkaran = cv2.circle(lingkaran, (250, 250), 200, (0, 0, 255), -2)

# # Menempatkan lingkaran di depan rotasi
# tumpukan = cv2.add(lingkaran, rotasi)
# tumpukan = cv2.add(tumpukan, persegi)

# # Menampilkan hasil
# cv2.imshow("Tumpukan", tumpukan)

cv2.imshow("rotasi", rotasi)
cv2.imshow("persegi", persegi)
cv2.waitKey(0)
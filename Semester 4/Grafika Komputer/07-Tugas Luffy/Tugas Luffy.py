import numpy as np
import cv2

# ukuran pixel 715, 1368 disesuaikan dengan pixel dari device saya supaya fullscreen
window = np.zeros((715, 1368, 3), dtype ='uint8')
window[:] = (46, 14, 18)

# Membuat Background
cv2.rectangle(window, (0,531), (1368, 715), (10, 30, 2), -1)

# membuat rumput
def grass (window, i):
    x = 30
    coordiate_1 = (13+(i*x), 499)
    coordiate_2 = (0+(i*x), 531)
    coordiate_3 = (30+(i*x), 531)

    triangle_point = np.array([coordiate_1,coordiate_2,coordiate_3])
    cv2.drawContours(window, [triangle_point], 0,(10, 30, 2),-1)

for i in range (47):
    grass(window, i)

# Membuat Tempat Duduknya
cv2.rectangle(window, (220, 518), (237, 699), (44, 71, 96), -1)
cv2.rectangle(window, (374, 518), (389, 699), (44, 71, 96), -1)
cv2.rectangle(window, (172, 591), (200, 715), (44, 71, 96), -1)
cv2.rectangle(window, (409, 591), (437, 715), (44, 71, 96), -1)

cv2.rectangle(window, (188, 506), (433, 588), (217, 217, 217), -1)
cv2.rectangle(window, (180, 579), (445, 591), (71, 20, 73), -1)
cv2.rectangle(window, (187, 460), (440, 527), (71, 20, 73), -1)
cv2.rectangle(window, (166, 260), (459, 470), (71, 20, 73), -1)

# Membuat Orangnya
# celana
cv2.rectangle(window, (215, 492), (417, 526), (62, 117, 164), -1)
cv2.ellipse(window, (321, 533), (78, 21), 0, 0, 360, (62, 117, 164), -1)
cv2.ellipse(window, (227, 540), (109, 34), -6.94, 0, 360, (62, 117, 164), -1)
cv2.ellipse(window, (415, 540), (96, 34), -172.28, 0, 360, (62, 117, 164), -1)

coordinate_celana = [
    [119, 554], [104, 715], [172,715], [189, 553], [439, 553], [455, 715], [526, 715], [509, 549], [327, 521]
]
pants_point = np.array(coordinate_celana)
cv2.drawContours(window, [pants_point], 0,(62, 117, 164),-1)

# Lengan Atas
cv2.ellipse(window, (188, 350), (102, 25), -47.44, 0, 360, (183, 227, 243), -1)
cv2.ellipse(window, (441, 361), (87, 25), 69.88 , 0, 360, (183, 227, 243), -1)

# baju
cv2.ellipse(window, (309, 276), (89, 28), 0, 0, 360, (15, 185, 204), -1)
cv2.ellipse(window, (314, 291), (139, 29), -2.45, 0, 360, (15, 185, 204), -1)
cv2.rectangle(window, (215, 304), (417, 492), (15, 185, 204), -1)

# Lengan bawah
cv2.ellipse(window, (228, 416), (112, 21), -2.91 , 0, 360, (183, 227, 243), -1)
cv2.ellipse(window, (373, 451), (110, 23), -10.71 , 0, 360, (183, 227, 243), -1)

# leher
cv2.ellipse(window, (305, 267), (62, 18), 0, 0, 360, (183, 227, 243), -1)

# bentuk wajah dan mulut
cv2.ellipse(window, (306, 151), (88, 103), 0, 0, 360, (183, 227, 243), -1)
cv2.ellipse(window, (306, 200), (46, 19), 0, 0, 360, (0, 0, 0), -1)
cv2.rectangle(window, (250, 178), (364, 209), (183, 227, 243), -1)

# mata
cv2.ellipse(window, (264, 140), (19, 14), 0, 0, 360, (0, 0, 0), -1)
cv2.ellipse(window, (346, 140), (19, 14), 0, 0, 360, (0, 0, 0), -1)
cv2.ellipse(window, (264, 140), (16, 9), 0, 0, 360, (255, 255, 255), -1)
cv2.ellipse(window, (346, 140), (16, 9), 0, 0, 360, (255, 255, 255), -1)
cv2.circle(window, (264, 140), 9, (0, 0, 0), -1)
cv2.circle(window, (346, 140), 9, (0, 0, 0), -1)

# rambut
coordinate_rambut = [
    [214, 89], [216,180], [225, 148], [230, 169], [236, 134], [238, 171], [250, 128], [246, 163], [273, 108],
    [275, 120], [291, 98], [306, 138], [311, 123], [318, 133], [319, 123], [327, 132], [320, 92], [349, 120],
    [350, 110], [372, 162], [369, 127],[379, 169], [381, 136], [388, 170], [390, 148], [398, 179], [401, 96],
    [310, 45] 
]
hair_point = np.array(coordinate_rambut)
cv2.drawContours(window, [hair_point], 0,(0,0,0),-1)

# topi
cv2.ellipse(window, (307, 108), (150, 6), 0, 0, 360, (24, 24, 195), -1)
cv2.ellipse(window, (307, 49), (96, 42), 0, 180, 360, (24, 24, 195), -1)
cv2.rectangle(window, (210, 49),(404, 80),(24, 24, 195), -1)
cv2.rectangle(window, (210, 80),(404, 102), (56, 216, 223), -1)

# rasi bintang
cv2.circle(window, (1174, 65), 3, (255, 255, 255), -1)
cv2.circle(window, (1090, 96), 3, (255, 255, 255), -1)
cv2.circle(window, (1013, 119), 3, (255, 255, 255), -1)
cv2.circle(window, (1063, 182), 3, (255, 255, 255), -1)
cv2.circle(window, (1120, 170), 3, (255, 255, 255), -1)
cv2.circle(window, (1000, 172), 3, (255, 255, 255), -1)
cv2.circle(window, (978, 160), 3, (255, 255, 255), -1)
cv2.circle(window, (959, 181), 3, (255, 255, 255), -1)
cv2.circle(window, (1004, 277), 3, (255, 255, 255), -1)
cv2.circle(window, (1023, 224), 3, (255, 255, 255), -1)
cv2.circle(window, (1075, 236), 3, (255, 255, 255), -1)
cv2.circle(window, (1079, 255), 3, (255, 255, 255), -1)
cv2.circle(window, (1101, 293), 3, (255, 255, 255), -1)

cv2.line(window, (1174, 65), (1090, 96), (255, 255, 242), 1)
cv2.line(window, (1090, 96), (1013, 119), (255, 255, 242), 1)
cv2.line(window, (1013, 119), (1063, 182), (255, 255, 242), 1)
cv2.line(window, (1063, 182), (1120, 170), (255, 255, 242), 1)
cv2.line(window, (1013, 119), (1000, 172), (255, 255, 242), 1)
cv2.line(window, (1000, 172), (978, 160), (255, 255, 242), 1)
cv2.line(window, (978, 160), (959, 181), (255, 255, 242), 1)
cv2.line(window, (959, 181), (1004, 277), (255, 255, 242), 1)
cv2.line(window, (1004, 277), (1023, 224), (255, 255, 242), 1)
cv2.line(window, (1023, 224), (1075, 236), (255, 255, 242), 1)
cv2.line(window, (1075, 236), (1079, 255), (255, 255, 242), 1)
cv2.line(window, (1079, 255), (1101, 293), (255, 255, 242), 1)

# membuat text biar lebih enakeun
font1 = cv2.FONT_HERSHEY_SCRIPT_SIMPLEX #gaya font handwriting
font2 = cv2.FONT_HERSHEY_SIMPLEX
cv2.putText(window, "... For the faraway things ...", (430, 85), font1, 1, (255, 255, 255), 0)
cv2.putText(window, "M Bayu Fadayan", (227, 349), font2, 0.7, (255, 255, 255), 2)
cv2.putText(window, "065121100", (265, 374), font2, 0.6, (255, 255, 255), 2)

cv2.imshow("The star, a stunning beauty beyond reach, can only be admired through daydreams", window)
cv2.waitKey(0)
cv2.destroyAllWindows()
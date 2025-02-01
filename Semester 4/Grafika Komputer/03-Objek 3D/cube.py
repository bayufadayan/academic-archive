import math, cv2, time
import numpy as np

blue = 255, 0, 0
green = 0, 255, 0
red = 0, 0, 255
white = 255, 255, 255
teal = 255, 255, 0

coordinate = list(range(8))

coordinate[0] = [[-1], [-1], [1]]
coordinate[1] = [[1], [-1], [1]]
coordinate[2] = [[1], [1], [1]]
coordinate[3] = [[-1], [1], [1]]
coordinate[4] = [[-1], [-1], [-1]]
coordinate[5] = [[1], [-1], [-1]]
coordinate[6] = [[1], [1], [-1]]
coordinate[7] = [[-1], [1], [-1]]

def line (window, i, j, k, color) :
    a, b = k[i], k[j]
    cv2.line(window, (a[0], a[1]), (b[0], b[1]), color, 5)

window = np.zeros((500,500,3), dtype='uint8')
sdt_x, sdt_y, sdt_z = 0,0,0
rotation_speed = 120
scale = 600
angular_changes = 0.01

while True:
    canvas = np.copy(window)
    coordinate_projection = [j for j in range (len(coordinate))]
    sdt_x += angular_changes
    sdt_y += angular_changes
    sdt_z += angular_changes

    x_rotation = [
        [1,0,0],
        [0, math.cos(sdt_x), -math.sin(sdt_x)],
        [0, math.sin(sdt_x), math.cos(sdt_x)],
    ]

    y_rotation = [
        [math.cos(sdt_y), 0, -math.sin(sdt_y)],
        [0,1,0],
        [math.sin(sdt_y), 0, math.cos(sdt_y)]
    ]

    z_rotation = [
        [math.cos(sdt_z), -math.sin(sdt_z), 0],
        [math.sin(sdt_z), math.cos(sdt_z), 0],
        [0,0,1]
    ]
    index = 0

    for crdnt in coordinate:
        rotasi2d = np.matmul(y_rotation, crdnt)
        rotasi2d = np.matmul(x_rotation, rotasi2d)
        rotasi2d = np.matmul(z_rotation, rotasi2d)
        distance = 5

        z = 1/(distance-rotasi2d[2][0])

        matrix_projection = [[z,0,0],[0,z,0]]
        proyeksi2d = np.matmul(matrix_projection, rotasi2d)

        x = int(proyeksi2d[0][0]*scale)  + 500//2
        y = int(proyeksi2d[1][0]*scale)  + 500//2
        coordinate_projection[index] = [x,y]

        cv2.circle(canvas, (x,y),5,white,10)
        cv2.circle(canvas, (500//2, 500//2), 5, teal, -1)

        index += 1
    
    for dot_coordinate in range (4) :
        line(canvas, dot_coordinate, (dot_coordinate + 1)%4, coordinate_projection, red)
        line(canvas, dot_coordinate+4, (dot_coordinate + 1)%4 +4, coordinate_projection, blue)
        line(canvas, dot_coordinate, (dot_coordinate + 4), coordinate_projection, green)

    cv2.imshow("cube", canvas)
    time.sleep(1/rotation_speed)
    if cv2.waitKey(1) == ord ('q'): 
        break
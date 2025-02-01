from ursina import *

def update() :
    global kecepatan

    camera.position = (cube.x, 0, -20)
    cube.x = cube.x + time.dt*kecepatan
    if abs(cube.x) > 3 : 
        kecepatan = kecepatan*-1
    else :
        cube.rotation_z =cube.rotation_z - time.dt * 1000

    sphere.x = sphere.x + time.dt*kecepatan
    if abs(sphere.x) > 3 : 
        kecepatan = kecepatan*-1
    else :
        sphere.rotation_z = sphere.rotation_z - time.dt * -700

app = Ursina()

kecepatan = 1
cube = Entity(model= 'quad', color = color.red, scale = (5, 5, 5))
sphere = Entity(model='cube', color =color.blue, scale = (2,2,2))

app.run()
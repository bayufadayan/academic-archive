from ursina import *
from random import randint

def update() : 
    global speed
    if held_keys['w']:
        Kubus.y = Kubus.y + time.dt * speed
    elif held_keys['s']:
        Kubus.y = Kubus.y + time.dt * speed*-1
    elif held_keys['d']:
        Kubus.x = Kubus.x + time.dt * speed
    elif held_keys['a']:
        Kubus.x = Kubus.x + time.dt * speed*-1
    elif held_keys['space']:
        Kubus.z = Kubus.z + time.dt * speed*2
    elif held_keys['tab']:
        Kubus.z = Kubus.z + time.dt * speed*-2
    elif held_keys['i']:
        Kubus.rotation_y = Kubus.rotation_y + time.dt * speed*100
    elif held_keys['k']:
        Kubus.rotation_x = Kubus.rotation_x + time.dt * speed*100
    elif held_keys['j']:
        Kubus.scale_x = Kubus.scale_x + time.dt * speed
    elif held_keys['l']:
        Kubus.scale_x = Kubus.scale_x + time.dt * speed*-1
    elif held_keys['0']:
        Kubus.rotation_z = Kubus.rotation_z + time.dt * speed*100

input12 = Ursina()

speed = 1
Kubus = Entity(
    model = 'cube',
    color = color.red,
    scale = 2
    )

input12.run()
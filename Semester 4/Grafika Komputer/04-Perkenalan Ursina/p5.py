import string
from ursina import *

string player = ""

class Player(Entity):
    def __init__(self):
        super().__init__(
            model='cube',
            color=color.orange,
            scale=(1, 2, 1),
            position=(0, 1, 0)
        )

        self.speed = 6
        self.jump_height = 2
        self.gravity = 1.5
        self.jump = False
        self.score = 0

    def update(self):
        self.rotation_y += 1

        if held_keys['space'] and not self.jump:
            self.jump = True
            self.y += self.jump_height
            invoke(self.reset_jump, delay=0.5)

        self.y -= self.gravity * time.dt

        if self.y < -5:
            self.y = 1
            self.x = 0
            self.score = 0

    def reset_jump(self):
        self.jump = False

class Coin(Entity):
    def __init__(self, position):
        super().__init__(
            parent=scene,
            model='sphere',
            color=color.gold,
            scale=(0.5, 0.5, 0.5),
            position=position,
            collider='sphere'
        )

        self.speed = 2

    def update(self):
        self.rotation_y += 1

        if self.intersects().hit:
            self.disable()
            player.score += 1

class Enemy(Entity):
    def __init__(self, position):
        super().__init__(
            parent=scene,
            model='cube',
            color=color.red,
            scale=(1, 2, 1),
            position=position,
            collider='box'
        )

        self.speed = 4

    def update(self):
        self.rotation_y += 2
        self.x += self.speed * time.dt

        if self.x > 5:
            self.x = -5

        if self.intersects().hit:
            player.score -= 1

class Score(Text):
    def __init__(self):
        super().__init__(
            parent=scene,
            text='Score: 0',
            color=color.white,
            position=(-0.75, 0.4),
            origin=(0, 0),
            scale=2
        )
        self.player = None

    def update(self):
        self.text = f'Score: {self.player.score}'

class Game(Ursina):
    def __init__(self):
        super().__init__()

        self.player = Player()
        self.coin = [Coin((i, 0, 0)) for i in range(-4, 5, 2)]
        self.enemy = Enemy((-5, 0, 0))
        self.score = Score()
        self.score.player = self.player

    def update(self):
        self.player.x += held_keys['d'] * self.player.speed * time.dt
        self.player.x -= held_keys['a'] * self.player.speed * time.dt

        for coin in self.coin:
            coin.x -= coin.speed * time.dt

            if coin.x < -5:
                coin.x = 5

        self.enemy.x += self.enemy.speed * time.dt

        if self.enemy.x > 5:
            self.enemy.x = -5
        
        if held_keys['a']:
            self.player.x -= 1 * time.dt
        elif held_keys['d']:
            self.player.x += 1 * time.dt

if __name__ == '__main__':
    game = Game()
    game.run()

# Objective: Simple class — methods persist in the progressive sniper.
# No blank lines inside the class body (REPL closes compound on blank).

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y
    def dist2(self):
        return self.x * self.x + self.y * self.y

p = Point(3, 4)
assert p.dist2() == 25
print(p.x, p.y, p.dist2())
print("PASS 08_classes")

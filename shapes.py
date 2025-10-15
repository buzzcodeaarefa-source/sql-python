# Parent Class
class Rectangle:
    def __init__(self, length, breadth):
        self.length = length
        self.breadth = breadth

    def area(self):
        return self.length * self.breadth

    def perimeter(self):
        return 2 * (self.length + self.breadth)

# Child Class
class Square(Rectangle):
    def __init__(self, side):
        super().__init__(side, side)

rect = Rectangle(10, 5)
print(f"Rectangle Area: {rect.area()}")
print(f"Rectangle Perimeter: {rect.perimeter()}")

sq = Square(7)
print(f"Square Area: {sq.area()}")
print(f"Square Perimeter: {sq.perimeter()}")

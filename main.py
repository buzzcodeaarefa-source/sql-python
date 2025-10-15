import numpy as np

data_type = [('name', 'S15'), ('class', int), ('height', float)]
students_details = [('James', 5, 48.5), ('lily', 6, 52.5),('harry', 5, 42.10),('sirus', 5, 40.11)]

students = np.array(students_details, dtype=data_type)
print("Original array:")
print(students)

print("acces first element :", students[0])
print("acces last element :", students[3])

print("datatype: ", students.dtype)
print("shape: ", students.dtype)

print("Sort by height")
print(np.sort(students, order='height'))
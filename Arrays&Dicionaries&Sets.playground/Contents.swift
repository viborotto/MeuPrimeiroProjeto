import UIKit

//Arrays: lista ordenada, mas os elementos tem que ser do mesmo tipo
var array = [1, 2, 3,4]
//para misturar
var arrayMix: [Any] = [1, 2, "3", "4"]

print(array)

array.count

array.append(5) // adiciona um item

print(array)

array.insert(6, at: 1)

array.removeLast()
print(array)
array.removeFirst()
print(array)
array.remove(at: 2)
print(array)

array = [1, 6, 2, 3, 4, 5]
print(array)

array.sort()
print(array)//array foi ordenado

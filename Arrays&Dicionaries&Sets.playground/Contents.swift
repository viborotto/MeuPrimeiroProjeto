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


//Dicionarios : chave e valor, de qualquer tipo

var dicionario: [String: Any] = ["chave 1": "Valor 1", "chave 2": "valor 2"]

print(dicionario)

dicionario["chave 1"]

var dicionario2: [String: Int] = ["chave1": 1, "chave2": 2]
dicionario2["chave1"]

//adicionar
dicionario["chave3"] = "valor 3"
print(dicionario)
//ou tambem

dicionario.updateValue("valor 4", forKey: "chave4")
print(dicionario)

//alterar o valor da chave
dicionario["chave3"] = "novo valor 3"
//ou igual o de cima

//remover
dicionario.removeValue(forKey: "chave 1")
print(dicionario)
dicionario.remove(at: dicionario.index(forKey: "chave 2"))!
print(dicionario)




//Sets

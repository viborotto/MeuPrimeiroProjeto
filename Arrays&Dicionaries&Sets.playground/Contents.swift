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





//Sets
//nao contem indices, nao é ordenado por padrao
var set = Set([1, 2, 3 , 4, 5])
set.sorted()
//vantagens: nao pode ter elementos duplicados

var setDuplicatedElements = Set([1,2,3,4,5,6,6,6,6])
setDuplicatedElements.sorted()

//elementos tem que seguir o protocolo hashable
//pra saber se ja existe elemento igual, ele usa isso
1.hashValue
2.hashValue

set.insert(7)
print(set)
//se tentar adicionar de novo o 7, nao sera adicionado

set.removeFirst() //nao garante que vc vai remover o que quer, por nao ser ordenado
print(set)

set.popFirst()
print(set)

set.remove(3)//pelo valor
print(set)


set.remove(at: set.firstIndex(of: 5)!)//primeiro indice do valor 5
print(set)

let animals = Set(["dog", "cat", "horse", "chicken"])
let farmAnimals = Set(["horse", "chicken"])

farmAnimals.isSubset(of: animals) //todos elementos estao contidos
animals.isSuperset(of: farmAnimals)

let savanaAnimals = Set(["elephant", "tiger"])
farmAnimals.isDisjoint(with: savanaAnimals) //nao ha nenhum animal que exista no savanaAnimals

let newAnimalsSet = animals.union(savanaAnimals)
print(newAnimalsSet)

animals.intersection(farmAnimals)//interseccao dos Sets


import UIKit

var str = "Hello, playground"

//diferença entre let e var
var anotherString = "Hi" //variavel

let name = "My Name" //uma constante

var my_name = "Vittoria"
var my_last_name = "Borotto"

//nao substitui a variavel, mas sim cria um outro objeto em memoria e setando pra mesma variavel
// a variavel vai ficar perdida na memoria e depois o Garbage collector vai eliminar
var my_name_concatenated = my_name + " " + my_last_name //concatenar

var my_full_name = "O meu nome completo é: \(my_name) \(my_last_name)" //interpolacao: outro jeito de concatenar

var my_special_character = "\u{2665}"
var my_second_special_character = "\u{1F469}"

//toda string tem um tipo associado: string index, posicao de cada caracter
my_name[my_name.startIndex] //primeira letra da string
my_name.first // ||
my_name.last // ||
my_name[my_name.index(before: my_name.endIndex)] //pegar o ultimo
my_name[my_name.index(after: my_name.startIndex)] //pegar o segundo indice
my_name[my_name.index(my_name.startIndex, offsetBy: 2)] //duas casas para o lado

// for pra pegar os index da string
for index in my_name_concatenated.indices {
    print("\(my_name_concatenated[index])", terminator: "") //terminator deixa tudo na mesma linha
}


//substring
var index = my_name_concatenated.firstIndex(of: " ")! //primeiro caracter separado por
my_name_concatenated[..<index] //tudo antes de chegar no index

//var indextwo = my_full_name.firstIndex(of: " ")!
//my_full_name[..<index]

var last_index = my_full_name.lastIndex(of: " ")!
my_full_name[..<last_index]

var words = my_full_name.split(separator: " ") //retorna todas as palavras
words[0]
words[5]
//podemos criar variaveis sem setar o tipo
var number = "1"

//TIPO INTEGER
var numbers: Int = Int("1") ?? 1 //converter no tipo Int, se nao existir retorna 1

var twenty = 20
var ten = 10

20 + 10
20 * 10
20 / 10
twenty / ten
"eu tenho \(twenty) dolares"

//DOUBLE

var number1 = 3.5
var number2 = 5.5

number1 + number2
number1 * number2
number1 / number2

var multilineString = """

Esta é uma variavel de multilinha
eu posso ter varias linhas
"""
print(multilineString)
 

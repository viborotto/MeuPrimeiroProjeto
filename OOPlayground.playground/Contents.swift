//CLASS E STRUCT: blocos de contrucao do projeto
//classe e structs: metodos, variaveis, construtores, constantes, podem ser extendidos , nao é herança, pode usar funcionalidades de protocolos
//diferenca, struct nao pode ter heranca
//instancias de classe: referencias || struct: instancias de tipo de valor, valueType
class User {
    var name: String
    var lastName: String
    
    //construtor em swift: init
    init(name: String, lastName: String){
        self.name = name
        self.lastName = lastName
    }
    
    //metodos, funcoes dentro da classe
    //retorno
    func showFullName() -> String {
        return "\(self.name) \(self.lastName)"
    }
}

var student = User(name: "Vittoria", lastName: "Borotto") //criando um objeto, instancia da classe
print(student)//ref memoria
print(student.showFullName())

var newStudent = student
newStudent.showFullName()//mesmo endereco de memoria de student, 2 variaveis apontando pra uma instancia
student.name = "Pedro"
newStudent.showFullName() //alterou os dois por conta desse apontamento




//heranca das classes
class Vehicle {
    var name: String
    var brand: String
    
    init(name: String, brand: String){
        self.name = name
        self.brand = brand
    }
    
    func showDescription() -> String {
        return "\(self.name) \(self.brand)"
    }
}

var gol = Vehicle(name: "Gol", brand: "Volkswagen")
gol.showDescription()

//carro herda veiculo
class Car : Vehicle {
    var isEletric: Bool
    var gears: Int
    
    init(name: String, brand: String, isEletric: Bool, gears: Int) {
        self.isEletric = isEletric
        self.gears = gears
        super.init(name: name, brand: brand) //herdados
    }
    
    //sobreescrevendo
    override func showDescription() -> String {
        //condicao ternaria
        let eletric = self.isEletric ? "Yes" : "No"
        return "\(self.name) \(self.brand) has \(gears) gears. This car is eletric: \(eletric)"
    }
}

var uno = Car(name: "Uno", brand: "Fiat", isEletric: false, gears: 4)
uno.showDescription() // retorno do override



class Train : Vehicle {
    var numberOfPassengers: Int
    
    init(name: String, brand: String, numberOfPassengers: Int){
        self.numberOfPassengers = numberOfPassengers
        super.init(name: name, brand: brand)
    }
    
    override func showDescription() -> String {
        return "This train has \(self.numberOfPassengers) of capacity"
    }
}

var train = Train(name: "Rio - Sao Paulo", brand: "Odebretch", numberOfPassengers: 200)
print(train.showDescription())


var vehicles: [Vehicle] = [gol, uno, train]

for vehicle in vehicles {
    if vehicle is Car {
        print("I want to buy it")
    } else {
        print("I don't have money")
    }
}

class Custumer {
    var name: String
    var age: Int
    var sex: String? //optional
    var car: Car?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var newCustumer = Custumer(name: "Carlos", age: 30)
newCustumer.sex //null, verifica se tem valor, antes de mostrar nulo

if let customerCar = newCustumer.car {
    customerCar.name
    customerCar.showDescription()
}

//STRUCT

struct UserStruct {
    var name:String
    var lastName:String
    
    init(name:String, lastName: String){
        self.name = name
        self.lastName = lastName
    }
    
    func showFullName()->String{
       return "\(self.name) \(self.lastName)"
    }
}

var studentStruct = User(name: "Vittoria", lastName: "Borotto")
print(studentStruct)

studentStruct.name = "Valentina"
print(studentStruct.showFullName())

var newStudentStruct = studentStruct
newStudent.showFullName() //outro endereco de memoria por isso nao muda diferentemente da classe, valueType 

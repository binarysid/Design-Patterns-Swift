protocol Fly{
    func getFlyingBehavior()->String
}

class Canfly: Fly{
    func getFlyingBehavior() -> String {
        return "I'm flying"
    }
}
class CanNotfly: Fly{
    func getFlyingBehavior() -> String {
        return "I can't fly"
    }
}
class Animal{
    var flyingType: Fly?
    
    func tryToFly() -> String?{
        return flyingType?.getFlyingBehavior()
    }
    func setFlyingAbility(fly:Fly){
        flyingType = fly
    }
}
class Dog:Animal{
    override init() {
        super.init()
        flyingType = CanNotfly()
    }
}

class Bird:Animal{
    override init() {
        super.init()
        flyingType = Canfly()
    }
}



let dog = Dog()
print(dog.tryToFly()!)
dog.setFlyingAbility(fly: Canfly())
print(dog.tryToFly()!)


// another example of Strategy pattern
protocol FileFormatInterface{
    func saveFile(format:String)
}

class DOCFormat:FileFormatInterface{ //loosely coupled class implementing parent protocol
    func saveFile(format: String) {
        print("saving as doc")
    }
}
class PDFFormat:FileFormatInterface{//loosely coupled class implementing parent protocol
    func saveFile(format: String) {
        print("saving as pdf")
    }
}

class TextFormat:FileFormatInterface{//loosely coupled class implementing parent protocol
    func saveFile(format: String) {
        print("saving as txt")
    }
}
class FileFormatter{
    var format: FileFormatInterface?
    init(fileFormat:FileFormatInterface) {
        self.format = fileFormat
    }
    func saveInFormat(){
        
        format?.saveFile(format: "")
    }
}
let createImg = FileFormatter(fileFormat: PDFFormat())
createImg.saveInFormat()




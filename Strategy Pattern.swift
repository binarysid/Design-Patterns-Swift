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
//dog.setAbility(fly: Notfly())

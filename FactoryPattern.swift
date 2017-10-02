//interface
protocol Gun{
    func getGunFeature()->String
    
}

class Pistol: Gun{
    var barrelLength:Float
    
    init(barrelLength: Float) {
        self.barrelLength = barrelLength
        
    }
    func getGunFeature()-> String{
        
        return "Pistol barrel length \(self.barrelLength) inch"
    }
}
class Shotgun: Gun{
    var barrelLength:Float
    
    init(barrelLength: Float) {
        self.barrelLength = barrelLength
        
    }
    func getGunFeature()-> String{
        
        return "Shotgun barrel length \(self.barrelLength) inch"
    }
}
class Rifle: Gun{
    var barrelLength:Float
    
    init(barrelLength: Float) {
        self.barrelLength = barrelLength
        
    }
    func getGunFeature()-> String{
        
        return "Rifle barrel length \(self.barrelLength) inch"
    }
}

//factory class
class GunFactory{
    static func getGunFactory(shipType:String)->Gun?{
        switch shipType {
        case "P":
            return Pistol(barrelLength: 15)
            break
        case "R":
            return Rifle(barrelLength: 18)
            break
        case "S":
            return Shotgun(barrelLength: 22)
            break
        default:
            return nil
            break
        }
        
    }
}

//Implementation
let gun = GunFactory.getGunFactory(shipType: "R")
print(gun!.getGunFeature())

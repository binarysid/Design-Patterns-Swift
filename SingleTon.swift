class SingleTon{
    static var sharedInstance: SingleTon?
    
    static func getInstance()->SingleTon?{
        guard let instance = sharedInstance else{
            sharedInstance = SingleTon()
            return sharedInstance
        }
        
        return instance
    }
}

let instanceA = SingleTon.getInstance()!
print("object id A: \(String(ObjectIdentifier(instanceA).hashValue))")
let instanceB = SingleTon.getInstance()!
print("object id B: \(String(ObjectIdentifier(instanceB).hashValue))") // will print the same object id as before

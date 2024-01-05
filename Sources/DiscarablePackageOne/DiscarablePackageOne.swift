// The Swift Programming Language
// https://docs.swift.org/swift-book
import Alamofire

struct Test{
    let value = ""
    
    public func testDependency(){
        let allowsCellularAccess = AlamofireExtension.default.allowsCellularAccess
        print("Allows cellular access: ",allowsCellularAccess)
    }
}

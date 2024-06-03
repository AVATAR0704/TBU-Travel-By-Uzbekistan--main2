//
//  UserO.swift
//  MapApp
//
//  Created by Samandar on 22/05/24.
//

import Foundation

enum Gender: String {
    case male, female
}

struct UserG {
    var name: String
    var age: Int
    var gender: Gender
    var password: String
    var userName: String
    
    
    
    static var zeroUsers: [UserG] =
    [
        UserG(name: "User1", age: 20, gender: .male, password: "tester1", userName: "User1"),
        UserG(name: "User2", age: 20, gender: .male, password: "tester2", userName: "User2"),
        UserG(name: "User3", age: 20, gender: .male, password: "tester3", userName: "User3"),
        UserG(name: "User4", age: 20, gender: .male, password: "tester4", userName: "User4"),
        UserG(name: "User5", age: 20, gender: .male, password: "tester5", userName: "User5")
    ]
}

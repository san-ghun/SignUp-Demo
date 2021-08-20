//
//  UserInformation.swift
//  SignUP-Demo
//
//  Created by Sanghun Park on 2021/08/20.
//

import Foundation

class UserInformation {
    static let shared: UserInformation = UserInformation()
    
    var username: String?
    var password: String?
    
    var profileImage: Data?
    var description: String?
    
    var phoneNumber: String?
    var dateOfBirth: String?
    
    
}

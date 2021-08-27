//
//  UserInformation.swift
//  SignUP-Demo
//
//  Created by Sanghun Park on 2021/08/20.
//

import Foundation

class UserInformation {
    
    // MARK: - Properties
    // MARK: Set Singletone
    static let shared: UserInformation = UserInformation()
    
    // MARK:
    var username: String?
    var password: String?
    
    // MARK:
    var phoneNumber: String?
    var dateOfBirth: String?
    
    // MARK:
    var profileImage: Data?
    var description: String?
    
    
    // MARK: - Methods
    
    
    
}

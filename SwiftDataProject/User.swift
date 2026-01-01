//
//  User.swift
//  SwiftDataProject
//
//  Created by Hafizur Rahman on 28/12/25.
//

import SwiftData
import SwiftUI

@Model
class User {
    var name: String
    var city: String
    var joinDate: Date
    var jobs = [Job]()
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}

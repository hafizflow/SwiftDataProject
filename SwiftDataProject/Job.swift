//
//  Job.swift
//  SwiftDataProject
//
//  Created by Hafizur Rahman on 1/1/26.
//

import SwiftData
import Foundation

@Model
class Job {
    var name: String
    var priority: Int
    @Relationship(deleteRule: .cascade) var user: User?
    
    init(name: String, priority: Int, user: User? = nil) {
        self.name = name
        self.priority = priority
        self.user = user
    }
}

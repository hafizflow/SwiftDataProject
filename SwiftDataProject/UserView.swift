//
//  UserView.swift
//  SwiftDataProject
//
//  Created by Hafizur Rahman on 29/12/25.
//

import SwiftData
import SwiftUI

struct UserView: View {
    @Environment(\.modelContext) var modelContext
    @Query var users: [User]
    
    var body: some View {
        List(users) { user in
            withAnimation {
                HStack {
                    Text(user.name)
                    Spacer()
                    Text(String(user.jobs.count))
                }
            }
        }
        .onAppear(perform: addSample)
    }
    
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinDate
        }, sort: sortOrder)
    }
    
    func addSample() {
        let user1 = User(name: "Hafizur Rahman", city: "Dhaka", joinDate: .now)
        
        let job1 = Job(name: "SwiftData", priority: 1)
        let job2 = Job(name: "SwiftUI", priority: 2)
        
        modelContext.insert(user1)
        
        user1.jobs.append(job1)
        user1.jobs.append(job2)
    }
}

#Preview {
    UserView(minimumJoinDate: .now, sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}

//
//  UserView.swift
//  SwiftDataProject
//
//  Created by Hafizur Rahman on 29/12/25.
//

import SwiftData
import SwiftUI

struct UserView: View {
    @Query var users: [User]
    
    var body: some View {
        List(users) { user in
            withAnimation {
                Text(user.name)
            }
        }
    }
    
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinDate
        }, sort: sortOrder)
    }
}

#Preview {
    UserView(minimumJoinDate: .now, sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}

//
//  ContentView.swift
//  JsonPlaceHolder
//
//  Created by PROG on 06/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var users: [User] = []    
    var body: some View {
        
        List(users) { user in
            HStack(alignment: .center){
                VStack(alignment: .leading) {
                    Text(user.username)
                        .font(.headline)
                    Text(user.name)
                        .font(.subheadline)
                }
                Spacer()
                Text(user.website)
            }
        }
        .onAppear {
            apiCall().getUsers { (users) in
                self.users = users
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

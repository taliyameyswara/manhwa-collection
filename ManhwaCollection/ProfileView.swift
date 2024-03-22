//
//  ProfileView.swift
//  ManhwaCollection
//
//  Created by Taliya Meyswara on 22/03/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
                   Image("profile_picture")
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 150, height: 150)
                       .clipShape(Circle())
                       .padding(.bottom, 15)
                   
                   Text("Taliya Meyswara")
                       .font(.title)
                       .fontWeight(.semibold)
                   
                   Text("iOS Developer")
                       .font(.subheadline)
                       .foregroundColor(.gray)
                       .padding(.bottom, 15)
                   
                   Divider()
                   
                   HStack {
                       Text("Location")
                       Spacer()
                       Text("Semarang, Indonesia")
                   }.padding(.vertical, 5)
                   
                   HStack {
                       Text("Email")
                       Spacer()
                       Text("taliyameyswara@gmail.com")
                   }.padding(.vertical, 5)
                   
                   Spacer()
               }
               .padding()
    }
}

#Preview {
    ProfileView()
}

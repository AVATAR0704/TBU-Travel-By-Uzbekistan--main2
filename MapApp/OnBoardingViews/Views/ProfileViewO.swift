//
//  SwiftUIView.swift
//  MapApp
//
//  Created by Samandar on 22/05/24.
//

import SwiftUI

struct ProfileViewO: View {
    
    @Binding var profileToggle: Bool
    
    let name: String
    let age: Int
    let gender: String
    let username: String
    
    
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
            
            VStack(spacing: 20) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack {
                    Text("Name:")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Text(name)
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding()
                
                HStack {
                    Text("Age:")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Text("\(age)")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding()
                
                HStack {
                    Text("Gender:")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Text(gender.capitalized)
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding()
                
                HStack {
                    Text("Username:")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Text(username)
                        .font(.title2)
                        .fontWeight(.bold)
                }
                
                .padding()
                
                Spacer()
                
                Button {
                    print("Pressed")
                    profileToggle.toggle()
                } label: {
                    Text("Close")
                        .foregroundColor(Color("AccentColor"))
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 10,x: 10,y: 10)
                        .padding()
                    
                }
                
                
                
            }//Vstack
            
            
           }//ScrollView
            .padding()
            .background(
                Color("AccentColor")
            )
            .foregroundColor(.white)
            .navigationBarItems(leading: Button(action: {
                profileToggle.toggle()
            }, label: {
                Image(systemName: "person.fill")
                    .font(.title2)
                    .foregroundColor(.white)
            }))
          
            
            
        }//NAV
        
                
            }//body
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewO(profileToggle: .constant(true), name: "Samandar", age: 22, gender: "male", username: "murodii")
            .background(Color("AccentColor"))
    }
}

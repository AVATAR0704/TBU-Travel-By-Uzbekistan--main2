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
    let information: String =
        """
                  Foydalanuvchi uchun qo'llanma:
        
        TTU ilovasi, O'zbekiston fuqarolari va turistlar uchun qulaylik va ma'lumotlarni taqdim etish maqsadida ishlab chiqilgan. Bu ilova yordamida foydalanuvchilar O'zbekistondagi diqqatga sazovor joylarni ko'rish va ular haqida batafsil ma'lumot olishlari mumkin. Shuningdek, ular ilova orqali qanday qilib u joyga borish ma'lumotlariga yoki boshqa tugma orqali internetdan ma'lumotlarni o'qishlari ham mumkin.
        
        Bu ilovada quyidagi funktsiyalardan foydalanish mumkin:

        1. Diqqatga sazovor joylar ro'yhati: Bu ro'yhat O'zbekiston bo'ylab diqqatga sazovor joylarni tartiblash uchun qulaylikni ta'minlaydi.

        2. Batafsil ma'lumotlar: Foydalanuvchilar tanlagan joy haqida batafsil ma'lumot olishlari mumkin. Bu ma'lumotlar joyning tarixiy, madaniy va turizmga oid ma'lumotlarni o'z ichiga oladi.

        3. Borish ma'lumotlari: Foydalanuvchilar ilova orqali tanlagan joyga qanday borishlari haqida ma'lumot olishlari mumkin.

        4. Internetdan ma'lumotlar o'qish: Ilova orqali internetdan ma'lumotlarni o'qish va qidirish ham mumkin.

        Bu ilova turistlar va O'zbekiston fuqarolari uchun ko'plab foydali ma'lumotlar taqdim etish orqali sayohatni oson va qulay qiladi.
        """
    
    
    
    var body: some View {
        
        NavigationView {
            
          ScrollView {
            
            VStack {
                
                VStack(spacing: 20) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100,height: 100)
                    
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
                
                Text(information)
                
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

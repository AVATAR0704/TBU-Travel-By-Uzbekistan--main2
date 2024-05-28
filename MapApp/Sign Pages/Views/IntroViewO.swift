//
//  IntroViewO.swift
//  MapApp
//
//  Created by Samandar on 22/05/24.
//

import SwiftUI

struct IntroViewG: View {
    
    @AppStorage("signed") var isSigned: Bool = false
    
    @StateObject var vm: ViewModelG = ViewModelG()
    
    @StateObject private var vmMain: LocationsViewModel = LocationsViewModel()
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(colors: [Color("AccentColor").opacity(0.7), Color("AccentColor")], center: .topLeading, startRadius: 60, endRadius: 500).ignoresSafeArea()
            
            
            if isSigned {
                 LocationView()
                    .environmentObject(vmMain)
                    
            }else {
                 SignInViewG()
            }
            
        }
        .environmentObject(vm)
    }
}

struct ItroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroViewG()
    }
}

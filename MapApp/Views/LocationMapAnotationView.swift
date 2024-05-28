//
//  LocationMapAnotationView.swift
//  MapApp
//
//  Created by Macservis on 24/06/22.
//

import SwiftUI

struct LocationMapAnotationView: View {
    
   // let accentColor = Color("AccentColor")
    let accentColor = Color.red
    
    let location: Location
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "mappin.and.ellipse")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(accentColor)
                .padding(.bottom,40)
            
            
            
        }
        
        
    }
}

struct LocationMapAnotationView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
        
            Color.blue.ignoresSafeArea()
            
            LocationMapAnotationView(location: LocationDataService.locations.first!)
        }
    }
}

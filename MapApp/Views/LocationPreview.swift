//
//  LocationPreview.swift
//  MapApp
//
//  Created by Macservis on 24/06/22.
//

import SwiftUI

struct LocationPreview: View {
    
    
    @EnvironmentObject var vm: LocationsViewModel
    
    
    let location: Location
    
    var body: some View {
      
     
            
        HStack(alignment: .bottom) {
            
            VStack(alignment: .leading,spacing: 20) {
              
                //Image
                imageSV
               
                //Textts
                texts
                
            }
            
            VStack(spacing: 10) {
                
                //LearnMoreB
                learnBn
                
                //NextB
                nextBn
                
            }
            
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(.ultraThinMaterial)
                .offset(y: 55)
        )
        .clipped()
        .cornerRadius(25)
        .shadow(color: .black.opacity(0.5), radius: 20)
        
       
       
        
        
        
    }
}

struct LocationPreview_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
        LocationPreview(location: LocationDataService.locations.first!)
                .environmentObject(LocationsViewModel())
                .padding()
            
            
            
        }
        
           
    }
}


extension LocationPreview {
    
    private var imageSV: some View {
        
                Image(location.imageNames.first ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 100)
                    .cornerRadius(10)
                    .padding(6)
                    .background(Color.white.cornerRadius(10))
                    
        
    }
    
    private var texts: some View {
        
        VStack(alignment: .leading,spacing: 10) {
           
            Text(location.cityName)
                .font(.headline)
            
            Text(location.name)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        
    }
    
    
    private var learnBn: some View {
        
        Button {
            
            vm.showDetailViewLocation = location
            
        } label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 130, height: 50)
                .foregroundColor(.primary)
                .background(Color("AccentColor").cornerRadius(10))
        }

    }
    
    private var nextBn: some View {
        
        Button {
            
            vm.pressNextButton()
            
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 130, height: 50)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
        }
        
    }
    
}

//
//  LocationListsView.swift
//  MapApp
//
//  Created by Macservis on 24/06/22.
//

import SwiftUI

struct LocationListsView: View {
    
    @EnvironmentObject var vm: LocationsViewModel
    
    var body: some View {
        List {
            
            ForEach(vm.locations) { location in
                
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    locationCell(location: location)
                }
                .padding(.vertical,4)
                .listRowBackground(Color.clear)
            }
            
            
        }
        .listStyle(PlainListStyle())
    }
}

struct LocationListsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListsView()
            .environmentObject(LocationsViewModel())
    }
}


extension LocationListsView {
    
    
    private func locationCell(location: Location) -> some View {
        
        HStack {
            
            if let image = location.imageNames.first {
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)
                
            }
            
            VStack(alignment: .leading) {
                Text(location.cityName)
                    .font(.headline)
                
                Text(location.name)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
        }

        
    }
    
    
}

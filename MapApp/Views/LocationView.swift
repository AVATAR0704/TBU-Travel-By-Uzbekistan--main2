//
//  LocationView.swift
//  MapApp
//
//  Created by Macservis on 23/06/22.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    let widthForIpad: CGFloat = 700
    
    
    var body: some View {
        
        
        ZStack {
           
            //MAPView
            mapView
            
            VStack {
                
                //Header
                headersomeView
                    .frame(maxWidth: widthForIpad)
                .padding()
                
                Spacer()
                
                //Preview
                previewSV
                
            }
            
           
        }
        .sheet(item: $vm.showDetailViewLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
        
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationsViewModel())
    }
}



extension LocationView {
    
    
    
    private var mapView: some View {
        
        Map(coordinateRegion: $vm.currentMapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
               LocationMapAnotationView(location: location)
                    .scaleEffect((vm.currentMapLocation == location) ? 1 : 0.7)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
        .ignoresSafeArea()
        
    }
    
    
    
    private var headersomeView: some View {

        VStack(spacing: 0) {
            
            Button {
                
                vm.locationListtoggle()
                
            } label: {
                Text(vm.currentMapLocation.cityName + ", " + vm.currentMapLocation.name)
                    .fontWeight(.black)
                    .font(.title2)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                    }
                    .foregroundColor(.primary)
                
            }
            
            if vm.showLocationList {
                LocationListsView()
            }
            
        }
        .background(.thinMaterial)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.5), radius: 15, x: 0, y: 15)

    }
    
    
    
    private var previewSV: some View {
        
        ZStack{
            
        ForEach(vm.locations) {location in
            if vm.currentMapLocation == location {
                
            LocationPreview(location: location)
                .padding()
                .frame(maxWidth: widthForIpad)
                .frame(maxWidth: .infinity)
                .transition(
                    AnyTransition.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)))
                
            }
        }
            
     }//Zstack
        
    }
    
    
    
}


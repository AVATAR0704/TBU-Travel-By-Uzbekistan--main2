//
//  LocationDetailView.swift
//  MapApp
//
//  Created by Macservis on 24/06/22.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject var vm: LocationsViewModel
    
    @State var scaleImage: CGFloat = 0
    
    
    let location: Location
    
    let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    
    var body: some View {
        ScrollView {
          
            VStack(alignment: .leading, spacing: 20) {
                //TabView
                tabViewsv
                
                
                VStack {
                
                //TitleSection
                
                titleSectionsv
                
                //Description
                
                descriptionSectionsv
                
                    
                //MapView
                    
                mapView
                    
                }
                .padding()
                
                
            }
            
            
        }
        .ignoresSafeArea()
        .overlay(backButton, alignment: .topLeading)
        .background(.ultraThinMaterial)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}


extension LocationDetailView {
    
    private var tabViewsv: some View {
        
        TabView  {
            ForEach(location.imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
                    
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 500)
        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        .scaleEffect(1 + scaleImage)
        .gesture(
        
        MagnificationGesture()
            .onChanged { value in
                      
                 scaleImage = value - 1
            }
            .onEnded { value in
                
                scaleImage = 0
            }
        
        )
        
        
    }
    
    
    
    private var titleSectionsv: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            Text(location.name)
                .foregroundColor(.primary)
                .font(.title)
            
            Text(location.cityName)
                .font(.title2)
                .foregroundColor(.secondary)
            
            Divider()
        }
        .frame(maxWidth: .infinity,alignment: .leading)
        
       
        
    }
    
    private var descriptionSectionsv: some View {
        
        VStack(alignment: .leading,spacing: 20){
            
            Text(location.description)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.leading)
            
            Divider()
            
            if let urlString = URL(string: location.link) {
            
            Link("Read more on Wikipedia", destination: urlString)
                    .font(.headline)
                    .tint(.blue)
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    private var mapView: some View {
        
       
            
           
            
            Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinates, span: span)),
                annotationItems: [location]) { location in
                MapAnnotation(coordinate: location.coordinates) {
                    LocationMapAnotationView(location: location)
                        .shadow(radius: 10)
                    
                        
                }
        }
                .allowsHitTesting(false)
                .aspectRatio(1, contentMode: .fit)
                .cornerRadius(10)

    }
    
    private var backButton: some View {
        
        
        Button {
            
            vm.showDetailViewLocation = nil
            
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding()
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .padding()
        }

        
        
        
    }
    
    
   
}

//
//  LocationView.swift
//  MapApp
//
//  Created by Macservis on 23/06/22.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @AppStorage("signed") var isSigned: Bool = true
    @AppStorage("name") var nameOfM: String?
    @AppStorage("age") var ageOfM: Int?
    @AppStorage("gender") var genderOfM: String?
    @AppStorage("username") var usernameOfM: String?
    @AppStorage("password") var passwordOfM: String?
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    
    @State var profileViewToggle: Bool = false
    
    let widthForIpad: CGFloat = 700
    
    
    var body: some View {
        
        NavigationView {
            
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
                
                
                
                //ortiqch
                if profileViewToggle {
                    profileView
                        
                }
                
                //ortiqcha
                
               
            }
            .navigationBarItems(trailing:
              Button(action: {
                nameOfM = nil
                ageOfM = nil
                genderOfM = nil
                usernameOfM = nil
                passwordOfM = nil
                isSigned = false
                             },
                             label: {
                Text("Log out")
                    .font(.title2)
                              }))
            .navigationBarItems(leading:
                Button(action: {
                withAnimation {
                    profileViewToggle.toggle()
                }
                              }, label: {
                Image(systemName: "person.fill")
                                      .font(.title2)
                                      .shadow(radius: 20)
                              }))
            //.navigationTitle("TTU")
            .sheet(item: $vm.showDetailViewLocation, onDismiss: {profileViewToggle = false}) { location in
                LocationDetailView(location: location)
            }
            
        }//NAVVIew
        
       
        
        
    }//Body
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
        .onTapGesture {
            profileViewToggle = false
        }
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
     .onTapGesture {
            profileViewToggle = false
        }
        
    }
    
    private var profileView: some View {
        
        HStack {
            
            ProfileViewO(profileToggle: $profileViewToggle, name: nameOfM ?? "", age: ageOfM ?? 20, gender: genderOfM ?? "", username: usernameOfM ?? "")
                .frame(width: (UIScreen.main.bounds.width * 2) / 3)
            
            Spacer()
        }
        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
        .shadow(radius: 10,x: 20,y: 10)
        .ignoresSafeArea()
        
    }
    
    
    
}


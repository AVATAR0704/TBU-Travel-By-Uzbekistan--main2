//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Macservis on 23/06/22.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    
    
    @Published var locations: [Location] = []
    
    
    @Published var currentMapLocation: Location {
        
        didSet {
            
            updatecurrentMapRegion(location: currentMapLocation)
            
        }
        
    }
  
    @Published var currentMapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    let mkSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    
    @Published var showLocationList: Bool = false
    
    
    @Published var showDetailViewLocation: Location? = nil
    
    
    init() {
        let locations = LocationDataService.locations
        self.locations = locations
        currentMapLocation = locations.first!
        
        updatecurrentMapRegion(location: locations.first!)
    }
    
    
    
    
    //Func
    func updatecurrentMapRegion(location: Location) {
        
        withAnimation(Animation.easeOut) {
            currentMapRegion = MKCoordinateRegion(center: location.coordinates, span: mkSpan)
        }
        
    }
   
    
    func locationListtoggle() {
        
        withAnimation(.easeInOut) {
            showLocationList.toggle()
        }
        
    }
    
    
    func showNextLocation(location: Location) {
        
        withAnimation(Animation.easeInOut) {
            currentMapLocation = location
            showLocationList = false
        }
        
    }
    
    func pressNextButton() {
        
        guard let currentIndex = locations.firstIndex(where: {$0 == currentMapLocation}) else {
            print("Not have index")
            return
        }
        
        let nextIndex = currentIndex + 1
        
        guard locations.indices.contains(nextIndex) else {
            
            guard let firstLocation = locations.first else {return}
            
            showNextLocation(location: firstLocation)
            
            return
        }
        
        let nextLocation = locations[nextIndex]
        
        showNextLocation(location: nextLocation)
        
    }
    
    
}

//
//  Location.swift
//  MapApp
//
//  Created by Macservis on 21/06/22.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
  
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    let maplink: String
    
    var id: String {
        
        cityName + name
        
    }
    
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}


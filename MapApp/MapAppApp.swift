//
//  MapAppApp.swift
//  MapApp
//
//  Created by Macservis on 21/06/22.
//

import SwiftUI

//@main
//struct MapAppApp: App {
//
//    @StateObject private var vm: LocationsViewModel = LocationsViewModel()
//
//
//    var body: some Scene {
//        WindowGroup {
//            LocationView()
//                .environmentObject(vm)
//        }
//    }
//}

@main
struct MapAppApp: App {
    
    //@StateObject private var vm: LocationsViewModel = LocationsViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            IntroViewG()
               // .environmentObject(vm)
        }
    }
}

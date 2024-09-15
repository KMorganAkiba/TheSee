//
//  ContentView.swift
//  TheSee
//
//  Created by Kyle Morgan on 9/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location{
                Text("Your coordinates are: \(location.longitude), \(location.latitude)" )
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    Welcome_view()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}

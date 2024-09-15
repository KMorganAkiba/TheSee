//
//  Welcome view.swift
//  TheSee
//
//  Created by Kyle Morgan on 9/14/24.
//

import SwiftUI
import CoreLocationUI

struct Welcome_view: View {
    @EnvironmentObject var locationManager:
        LocationManager
    
    var body: some View {
        VStack {
            VStack (spacing: 20) {
                Text("Welcome to The See")
                    .bold().font(.title)
                
                Text("Please share your current location to get the weather in your area.")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocatation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    Welcome_view()
}

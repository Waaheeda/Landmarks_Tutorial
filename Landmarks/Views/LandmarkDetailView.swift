//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Vahida on 12/11/22.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark : Landmark
    
    var body: some View {
        ScrollView {
            
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges:.all)
                .frame(height:500)
                .offset(y:-100)
                
            CircleImage(image: landmark.image)
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: -250)
                .padding(.bottom,-250)
            
            Text(landmark.name)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.leading)
            .padding([.top, .bottom, .trailing])
            
            HStack {
                Text(landmark.park)
                    .font(.subheadline)
                    .fontWeight(.black)
                .foregroundColor(Color.black)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                
                
            }
            
            Divider()
            
            Text("About the \(landmark.name)")
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(Color.black)
                .multilineTextAlignment(TextAlignment.leading)
            
            Text(landmark.description)
                
                

        }.padding(16)
        .navigationTitle(landmark.name)
//        .navigationBarTitleDisplayMode(.inline)
    }
       
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[0])
    }
}

//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Vahida on 12/11/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .renderingMode(Image.TemplateRenderingMode.original)
                .frame(width: 50,height: 50)
            
            Text("\(landmark.name)")
            
            Spacer()
        }.padding(16)
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
                
            LandmarkRow(landmark: landmarks[1])
                 
            LandmarkRow(landmark: landmarks[2])
                 
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

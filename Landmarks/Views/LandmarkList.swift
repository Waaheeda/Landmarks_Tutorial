//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Vahida on 12/11/22.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavotiresOnly = false
    
    var filteredLandmarks : [Landmark] {
        
        landmarks.filter { thisLandmark in
           (!showFavotiresOnly ||  thisLandmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                
                Toggle(isOn: $showFavotiresOnly) {
                    Text("Show Faorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    
                    NavigationLink{
                       LandmarkDetailView(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }.navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

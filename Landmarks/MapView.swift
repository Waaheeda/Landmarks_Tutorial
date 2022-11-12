//
//  MapView.swift
//  Landmarks
//
//  Created by Vahida on 11/11/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    //@Stat attribute to estabish a source of the data in app that we can modify from more than one view
    //underlying storage and automatic updates to the views that depend on this value will be managed by SwiftUI
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

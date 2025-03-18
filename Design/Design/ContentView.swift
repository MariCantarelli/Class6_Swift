//
//  ContentView.swift
//  Design
//
//  Created by Aluno Mack on 18/03/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
           MapView()
                .edgesIgnoringSafeArea(.all)
            VStack{
                SearchBarView()
            }
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.showsUserLocation = true
        return mapView
    }
    func updateUIView(_ uiView: MKMapView, context: Context){}
}


struct SearchBarView: View {
    @State private var searchText: String = ""
    var body: some View {
        HStack{
            TextField("Buscar no App Mapas", text: $searchText)
                .padding(10)
                .background(Color(.systemGray))
                .cornerRadius(8)
            Image(systemName: "mic.fill")
                .padding(.horizontal, 8)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  URLSession
//
//  Created by David Cardeña Formoso on 21/8/23.
//

import SwiftUI

struct ContentView: View {
    
    private var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("Prueba peticion http")
                .padding()
            Button("Hacer petición") {
                //llamada a peticion
                viewModel.executeAPI()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

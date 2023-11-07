//
//  ViewModel.swift
//  URLSession
//
//  Created by David Cardeña Formoso on 21/8/23.
//

import Foundation

final class ViewModel {
    
    func executeAPI(){
        let urlSession = URLSession.shared //asignar singleton de URLSession a nuestra constante
        guard let url = URL(string: "https://itunes.apple.com/search/media=music&identity=song&term=avicii") else { return } //endpoint peticion
        
        urlSession.dataTask(with: url) { data, response, error in
            print("ℹ️ Data \(String(describing: data))")
            print("💿 Response \(String(describing: response))")
            print("🚨 Error \(String(describing: error))")
            
            if let data = data { //si llega data (es optional)
                let json = try? JSONSerialization.jsonObject(with: data)
                print(json)
            }
            
        }.resume()
    }
    
}

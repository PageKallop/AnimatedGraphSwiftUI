//
//  SearchBar.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/27/21.
//

import Foundation
import SwiftUI

class SearBar: ObservableObject {
    
    @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        guard let imageURL = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageURL) { (data, _, error) in
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }.resume()
    }
}


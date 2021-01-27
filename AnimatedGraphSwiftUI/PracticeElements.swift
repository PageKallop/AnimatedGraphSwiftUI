//
//  PracticeElements.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/27/21.
//

import SwiftUI

struct PracticeElements: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = SearBar()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
        
    }
    var body: some View {
        
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!).resizable()
            
        } else{
            return Image("placeholder").resizable()
        }
    }
}

struct PracticeElements_Previews: PreviewProvider {
    static var previews: some View {
        PracticeElements(url: "Monk")
    }
}

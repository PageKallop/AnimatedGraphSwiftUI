//
//  PracticeElements.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/27/21.
//

import SwiftUI

struct PracticeElements: View {
    
    @State private var rating: Int?
  
    var body: some View {
        
        VStack {
            ImageDisplay(rating: $rating)
            Text(rating != nil ? "Rate: \(rating!)" : "")
        }
    }
}

struct PracticeElements_Previews: PreviewProvider {
    static var previews: some View {
        PracticeElements()
    }
}

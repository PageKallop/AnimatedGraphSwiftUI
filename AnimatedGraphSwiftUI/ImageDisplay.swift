//
//  ImageDisplay.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/27/21.
//

import SwiftUI

struct ImageDisplay: View {
    
    let posters = ["https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://post.healthline.com/wp-content/uploads/2020/08/edible-flowers-732x549-thumbnail.jpg", "https://c.files.bbci.co.uk/957C/production/_111686283_pic1.png"]
    var body: some View {
        List(self.posters, id: \.self) { poster in
            PracticeElements(url: poster)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImageDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ImageDisplay()
    }
}

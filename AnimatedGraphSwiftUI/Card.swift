//
//  Card.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import SwiftUI

struct Card: View {
    
    let tapped: Bool
    
    var body: some View {
        VStack {
            Text("card")
                .frame(width: 100, height: 100)
                .background(self.tapped ? Color.black : Color.pink)
                .font(.title)
                .cornerRadius(30)
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}

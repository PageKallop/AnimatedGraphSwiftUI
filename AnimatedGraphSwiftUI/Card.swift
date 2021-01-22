//
//  Card.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import SwiftUI

struct Card: View {
    
    let tapped: Bool
    
    @State private var scale: CGFloat = 1.0
   
    var body: some View {
        VStack {
               
            
            Text("card")
                .frame(width: 350, height: 350)
                .background(self.tapped ? Color.black : Color.pink)
                .font(.title)
                .cornerRadius(30)
            Image("Monk")
                .resizable()
                .scaleEffect(scale)
                .frame(width: 150, height: 150)
                .gesture(MagnificationGesture()
                            .onChanged { value in
                                self.scale = value.magnitude
                            }
                         )
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}

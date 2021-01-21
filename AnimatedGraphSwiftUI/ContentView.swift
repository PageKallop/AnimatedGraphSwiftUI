//
//  ContentView.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Circle()
                .stroke(lineWidth: 20)
            
        Circle()
            .fill(Color.green)
            .frame(width: 200, height: 200)
            
         Rectangle()
            .fill(Color.yellow)
            .frame(width: 100, height: 200)
    }
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

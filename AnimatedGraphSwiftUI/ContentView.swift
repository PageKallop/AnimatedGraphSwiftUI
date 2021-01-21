//
//  ContentView.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapped: Bool = false
    var body: some View {
        VStack{
        //implements Bar graph 
        BarGraph(reports: ReportModel.all())
           
            Card(tapped: self.tapped)
                .gesture(TapGesture(count: 1)
                        .onEnded({ () in
                            self.tapped.toggle()
                        })
                )
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

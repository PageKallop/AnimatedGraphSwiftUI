//
//  ContentView.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapped: Bool = false
    @State private var cardRotate: Double = 0
    @State private var cardDragState = CGSize.zero
    
    
    var body: some View {
        VStack{
        //implements Bar graph 
        BarGraph(reports: ReportModel.all())
            .padding()
            Card(tapped: self.tapped)
                .animation(.easeInOut)
                .offset(y: self.cardDragState.height)
                .rotationEffect(Angle(degrees: self.cardRotate))
                .gesture(RotationGesture()
                            .onChanged { value in
                                self.cardRotate = value.degrees
                            }
                )
                .gesture(DragGesture()
                            .onChanged { value in
                                self.cardDragState = value.translation
                            }
                            .onEnded {
                                value in
                                self.cardDragState = CGSize.zero
                            }
                )
                
                .gesture(TapGesture(count: 1)
                        .onEnded({ () in
                            self.tapped.toggle()
                        })
                )
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

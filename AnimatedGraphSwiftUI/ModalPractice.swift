//
//  ModalPractice.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/22/21.
//

import SwiftUI

struct ModalPractice: View {
    let domino = ["a","🁫","🁫","🁫","🁫","🁫","🁫"]
    @State private var showModal: Bool = false
    @State private var selectedDomino: String = ""
    
    var body: some View {
        List{
            ForEach(0..<self.domino.count) { index in
               
                HStack {
                    Text(self.domino[index]).font(.custom("Ariel", size: 100))
                    Text("Domino \(index)")
                }.onTapGesture {
                    self.showModal.toggle()
                    self.selectedDomino = self.domino[index]
                }
            }
        }.sheet(isPresented: self.$showModal) {
            Text(self.selectedDomino)
                .font(.custom("Ariel", size: 200))
        }
        
    }
}

struct ModalPractice_Previews: PreviewProvider {
    static var previews: some View {
        ModalPractice()
    }
}

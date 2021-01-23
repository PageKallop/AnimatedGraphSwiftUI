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
    @State private var country: String = ""
    
    @State private var flageVM = FlagViewModel()
    var body: some View {
        List{
            
            Text(self.flageVM.country)
            ForEach(self.domino, id: \.self) { domino in
                HStack {
                    Text(domino)
                        .font(.custom("Arial", size: 100))
                    Spacer()
                }.onTapGesture {
                    self.flageVM.domino = domino
                    self.flageVM.showModel.toggle()
                }
            }
            
            
        }.sheet(isPresented: self.$flageVM.showModel) {
            FlagDetailView(flagVM: $flageVM)
        }
        
    }
}

struct ModalPractice_Previews: PreviewProvider {
    static var previews: some View {
        ModalPractice()
    }
}

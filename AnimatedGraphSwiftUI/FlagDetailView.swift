//
//  FlagDetailView.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/23/21.
//

import SwiftUI

struct FlagDetailView: View {
  
    @Binding var flagVM: FlagViewModel
    
    var body: some View {
        VStack {
            Text(self.flagVM.domino)
                .font(.custom("Arial", size: 200))
            TextField("Enter Country Name", text: self.$flagVM.country)
                .padding()
                .fixedSize()
            Button("Submit") {
                
                self.flagVM.showModel.toggle()
            }
           
        }
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView(flagVM: .constant(FlagViewModel()))
    }
}

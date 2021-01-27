//
//  PracticeElements.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/27/21.
//

import SwiftUI

struct PracticeElements: View {
    
   
    @ObservedObject var settingVM = SearchBar()
    
    var body: some View {
        VStack(alignment: .center) {
            Toggle(isOn: self.$settingVM.isOn){
                Text("")
            }.fixedSize()
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(self.$settingVM.isOn.wrappedValue ? Color.green : Color.red)
    }
}

struct PracticeElements_Previews: PreviewProvider {
    static var previews: some View {
        PracticeElements()
    }
}

//
//  PracticeElements.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/27/21.
//

import SwiftUI

struct PracticeElements: View {
    
    @State private var searchTerm: String = ""
    
    let names = ["lu", "sue", "drew", "few", "moo"]
    
    private var reportModel = ReportModel.all()
    var body: some View {
        List {
            SearchBar(text: $searchTerm)
            
            ForEach(self.names.filter {
                self.searchTerm.isEmpty ? true :
                    $0.localizedCaseInsensitiveContains(self.searchTerm)
            }, id: \.self) { name in
                Text(name)
            }
        }
    }
}

struct PracticeElements_Previews: PreviewProvider {
    static var previews: some View {
        PracticeElements()
    }
}

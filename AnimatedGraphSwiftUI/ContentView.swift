//
//  ContentView.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: ReportModel.all())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

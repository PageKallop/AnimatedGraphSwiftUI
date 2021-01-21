//
//  BarGraph.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import Foundation
import SwiftUI

struct  BarGraph: View {
    var body: some View {
        
        VStack {
            
            HStack(alignment: .lastTextBaseline) {
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 120)
                    .padding()
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 150)
                    .padding()
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 180)
                    .padding()
                Spacer()
                
            }
            
        }
    }
}


struct BarGraph_Previews: PreviewProvider {
    
    static var previews: some View {
        BarGraph()
    }
}

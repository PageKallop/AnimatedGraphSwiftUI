//
//  BarGraph.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import Foundation
import SwiftUI

struct  BarGraph: View {
    
    let reports: [ReportModel]
    
    var body: some View {
        
        VStack {
            
            HStack(alignment: .lastTextBaseline) {
                
                ForEach(self.reports, id: \.year) { report in
                    BarView(report: report)
                    
                    
                }
                
            }
            
        }
    }
}

struct BarView: View {
    let report: ReportModel
    
    var body: some View{
        
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
       
        
        return VStack {
            
            Text(String(format: "$%.2f", report.revenue))
            Rectangle()
                .fill(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: CGFloat(yValue))
            Text(report.year)
        }
    }
}


struct BarGraph_Previews: PreviewProvider {
    
    static var previews: some View {
        BarGraph(reports: ReportModel.all())
    }
}

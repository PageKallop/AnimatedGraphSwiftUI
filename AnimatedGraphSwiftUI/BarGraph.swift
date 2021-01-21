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
    //creates a state for the graph
    @State private var showGraph: Bool = false
    
    var body: some View{
        //sets value of reportmodel
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
       
        
        return VStack {
            //displays graph
            Text(String(format: "$%.2f", report.revenue))
            Rectangle()
                .fill(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: self.showGraph ? CGFloat(yValue) : 0.0)
                .onAppear {
                    withAnimation(.spring()) {
                        self.showGraph = true
                    }
                }
            
            Text(report.year)
        }
    }
}


struct BarGraph_Previews: PreviewProvider {
    
    static var previews: some View {
        BarGraph(reports: ReportModel.all())
    }
}

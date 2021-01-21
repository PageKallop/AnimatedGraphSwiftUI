//
//  ReportModel.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/21/21.
//

import Foundation
//crates a revenue and year model to return
struct ReportModel: Hashable {
    
    let year: String
    let revenue: Double
}

extension ReportModel {
    
    static func all() -> [ReportModel] {
        return [
        ReportModel(year: "2018", revenue: 2500),
        ReportModel(year: "2019", revenue: 4500),
        ReportModel(year: "2020", revenue: 6500)
        
        ]
        
    }
}

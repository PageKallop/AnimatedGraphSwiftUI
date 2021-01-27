//
//  SearchBar.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/27/21.
//

import Foundation
import SwiftUI

class SearchBar: ObservableObject {
    @Published var isOn: Bool = UserDefaults.standard.bool(forKey: "isOn") {
        
        didSet {
            UserDefaults.standard.setValue(self.isOn, forKey: "isOn")
        }
    }
}


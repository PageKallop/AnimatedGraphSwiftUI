//
//  Form.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/22/21.
//

import SwiftUI

struct NewForm: View {
    
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTillTomorrow: Bool = false
    @State private var colorTemp: CGFloat = 5.0
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Header I want you to want me, I need you to need me, I'd love you to love me, O I'm begging you to beg me").padding(5).lineLimit(nil)) {
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    HStack {
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                        
                        NavigationLink(destination:
                                        Text("Scheduled Settings")) {
                            VStack{
                                Text("Sunset").foregroundColor(.blue)
                                Text("Sunrise").foregroundColor(.blue)
                            }
                        }.fixedSize()
                        
                    }
                    
                }
                Section(header: Text("").padding()) {
                    HStack{
                        Toggle(isOn: $manuallyEnabledTillTomorrow) {
                            Text("Manually Enable Unitil Tomorrow")
                        }
                    }
                    
                    Section(header: Text("Color Temp").padding()) {
                        
                        HStack {
                            Text("Less Warm")
                            Slider(value: $colorTemp)
                            Text("More Warm")
                        }
                    }
                }
            }
        }
    }
}

struct NewForm_Previews: PreviewProvider {
    static var previews: some View {
        NewForm()
        
        
    }
}

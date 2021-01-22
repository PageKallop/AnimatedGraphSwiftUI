//
//  ListandForm.swift
//  AnimatedGraphSwiftUI
//
//  Created by Page Kallop on 1/22/21.
//

import SwiftUI

struct ListandForm: View {
    
    @State private var images = ["👻","💀","☠️","👽","👾","🤖","🦷"]
    
    var body: some View {
        NavigationView {
            
            Form {
                
                Section(header: Text("")) {
                    HStack {
                        Text("Show Previews")
                        Spacer()
                        NavigationLink(destination : Text("")) {
                            Text("Always").foregroundColor(.gray)
                        }.fixedSize()
                    }
                }
                Section(header: Text("Phone is locked and found when phone is unused for 30 seconds")) {
                    
                    NavigationLink(destination : Text("")) {
                        Text("Siri Suggestions")
                    }
                }
                
                Section(header: VStack (alignment: .leading){
                    Text("Choose while apps can suggest shortcuts on the lock screen").padding(5)
                    Text("NOTIFICATIOIN STYLE")
                }) {
                    ForEach(self.images, id: \.self) { img in
                        
                        HStack {
                            Text(img)
                                .font(.largeTitle)
                            Text("Notification")
                        }
                    }
                }.navigationBarTitle("Notifications", displayMode: .inline)
            }
        }
    }
}


struct ListandForm_Previews: PreviewProvider {
    static var previews: some View {
        ListandForm()
    }
}

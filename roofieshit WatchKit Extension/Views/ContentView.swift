//
//  ContentView.swift
//  roofieshit WatchKit Extension
//
//  Created by Neil Auroni on 8/23/22.
//

import SwiftUI

struct ContentView: View {
    @State var showModalView: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    
                        
                        
                        Button(action: {showModalView = true
                        })
                        {
                            Image(systemName: "text.justify")
                                .resizable()
                                .frame(width:20, height: 20)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                    
                    Spacer()
                    
                }
                
                .sheet(isPresented: $showModalView) {
                    MenuSheetView()
                    
                }
                
            }
            
            Spacer()
                .frame(height:40)
            
            
            

            NavigationLink(destination: ActiveView()) {
                Text("Going out?").bold()
                    }
            
            
            Spacer()
                .frame(height: 45)
            
            Label("Alert mode off", systemImage: "person.2")
            
        }
    }
}



struct MenuSheetView: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Add Friends")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


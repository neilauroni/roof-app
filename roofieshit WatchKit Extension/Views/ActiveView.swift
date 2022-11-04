//
//  ActiveView.swift
//  roofieshit WatchKit Extension
//
//  Created by Neil Auroni on 9/20/22.
//


// testing git
import SwiftUI

struct ActiveView: View {
    @EnvironmentObject var workoutManager: HealthKitManager

    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Text("SOS")
                }
            }
            
            Spacer()
                .frame(height:35)
            
            HStack {
                Text(workoutManager.heartRate.formatted(.number.precision(.fractionLength(0))) + " bpm")
                Image(systemName: "heart") .resizable()
                    .foregroundColor(.pink)
                    .frame(width:27, height:27)
            Spacer()
            }
            
            Spacer()
            
            Label("Alert mode on", systemImage: "person.2.fill")
        }
        
        
    }
}

struct ActiveView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveView().environmentObject(HealthKitManager())
        
        
    }
}

//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by William Robert Harrington on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored properties
    // @State is a "property wrapper"
    // the property wrapper alerts SwiftUI to the fact that we want chances to this property to show in the UI.
   @State var radius: Double = 10.0
    
    // MARK: Computed property
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            // Input
            Text("Radius:")
                .bold()
            
            // The syntax of $ says that to use the property, radius, and BIND it to this control
            Slider(value: $radius,
                   in: 0.0...100.0,
                   label: {
                Text("Radius")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            
//            TextField("Radius",
//                      text: .constant("10.0"), prompt: Text("e.g. : 24.5"))
//                .keyboardType(  .decimalPad)
            
            // Output
            Text("Area:")
                .bold()
            
            Text("314.2 square units")
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CircleView()
        }
    }
}

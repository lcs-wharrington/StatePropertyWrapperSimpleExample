//
//  ContentView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by William Robert Harrington on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            // Input
            Text("Radius")
                .bold()
            
            TextField("Radius",
                      text: .constant(""), prompt: Text("e.g. : 24.5"))
            
            // Output
            Text("Area")
                .bold()
            
            Text("24.0 square units")
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}

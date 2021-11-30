//
//  RectangleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by William Robert Harrington on 2021-11-29.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
         
            Text("Length:")
                .bold()
            
            Text("Width:")
                .bold()
            
            Text("Area:")
                .bold()
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Rectangle")
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RectangleView()
        }
            .preferredColorScheme(.dark)
    }
}

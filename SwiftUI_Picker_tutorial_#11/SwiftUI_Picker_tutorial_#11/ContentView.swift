//
//  ContentView.swift
//  SwiftUI_Picker_tutorial_#11
//
//  Created by 우럭mac on 2021/11/15.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    
    let myColorArray = ["Red", "Green", "Blue"]

    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        
        VStack (alignment: .center){
            
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(self.changeColor(index: selectionValue))
//                .background(Color.blue)
                
            
            Text("Selection Value : \(selectionValue)")
            Text("Selection Color : \(myColorArray[selectionValue])")
            
            Picker(selection: $selectionValue, label: Text("")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            
            Picker(selection: $selectionValue, label: Text("")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }.frame(width: 50, height: 100)
                .clipped()
                .padding()
                .border(self.changeColor(index: selectionValue), width: 10)
            
        }.padding(.horizontal, 50)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

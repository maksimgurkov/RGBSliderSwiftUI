//
//  ContentView.swift
//  RGBSliderSwiftUI
//
//  Created by Максим Гурков on 03.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    @State private var userText = ""
    
    var body: some View {
        VStack {
            SliderColorView(color: .red, value: $redSliderValue, text: $userText)
            SliderColorView(color: .green, value: $greenSliderValue, text: $userText)
            SliderColorView(color: .blue, value: $blueSliderValue, text: $userText)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderColorView: View {
    let color: Color
    @Binding var value: Double
    @Binding var text: String
    
    var body: some View {
        HStack {
            Text("Red").foregroundColor(color)
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
            TextField("", text: $text)
        }
        .padding()
        
    }
}

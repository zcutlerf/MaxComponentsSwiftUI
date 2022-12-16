//
//  ContentView.swift
//  MaxComponentsSwiftUI
//
//  Created by Zoe Cutler on 12/16/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        HStack {
            VStack {
                Bang(isOn: $vm.bang1IsOn)
                Text("Bang is \(vm.bang1IsOn ? "ON" : "off")")
            }
            VStack {
                Fader(value: $vm.fader1Value)
                    .frame(height: 150.0)
                Text("\(vm.fader1Value)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

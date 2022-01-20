//
//  ContentView.swift
//  Tabbed
//
//  Created by Nazar Babyak on 18.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab = 0
    var body: some View{
        
        
        VStack{
        
            Picker(selection: $currentTab, label: Text("")) {
                Image(systemName: "house.fill")
                    .tag(0)
                Image(systemName: "person.fill")
                    .tag(1)
                Image(systemName: "flame.fill")
                    .tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.top, 22)
            
            Spacer()
            
            if currentTab == 0 {
                pageOne()
            }
            if currentTab == 1 {
                pageTwo()
            }
            if currentTab == 2 {
                pageThree()
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct pageOne: View {
    var body: some View{
        
         Text("111")
            .padding(.bottom, 11)
         
    }
}


struct pageTwo: View {
    var body: some View{
        
         Text("222")
            .padding(.bottom, 11)
        
    }
}

struct pageThree: View {
    var body: some View{
        
         Text("333")
            .padding(.bottom, 11)
        
    }
}

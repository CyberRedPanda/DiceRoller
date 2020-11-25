//
//  ContentView.swift
//  DiceRoller
//
//  Created by User23198271 on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: HistoryData
    
    var body: some View {
        TabView {
            RollView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Roll!")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("History")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

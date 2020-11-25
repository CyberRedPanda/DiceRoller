//
//  HistoryView.swift
//  DiceRoller
//
//  Created by User23198271 on 10/18/20.
//

import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var data: HistoryData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data.historyResult, id: \.self) { item in
                    Text("You rolled a \(item)")
                    }
                }
            .navigationBarTitle("Role History")
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}

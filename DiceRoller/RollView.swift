//
//  RollView.swift
//  DiceRoller
//
//  Created by User23198271 on 10/18/20.
//

import SwiftUI

struct RollView: View {
    @State private var twoDice = false
    @State var resultSix = Int.random(in: 0...5 )
    @State var secondResultSix = Int.random(in: 0...5 )
    
    var body: some View {
        NavigationView {
        ZStack {
        Image("wallpaper")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
        VStack {
            DiceNumber(resultSix: $resultSix)
        if twoDice == true {
            DiceNumber(resultSix: $secondResultSix) 
            }
        }
        .navigationBarTitle(
            twoDice == false ?
                "Total: \(String(resultSix + 1))"
                : "Total: \(String(resultSix + secondResultSix + 2))")
        .navigationBarItems(trailing:
            Button(action: {
                twoDice.toggle()
            }) {
                if twoDice == false {
                    Image(systemName: "plus")
                } else {
                    Image(systemName: "minus")
                    }
                })
            }
        }
    }
}

struct RollView_Previews: PreviewProvider {
    static var previews: some View {
        RollView()
    }
}

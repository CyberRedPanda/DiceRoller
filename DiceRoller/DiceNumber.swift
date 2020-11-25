//
//  DiceNumber.swift
//  DiceRoller
//
//  Created by User23198271 on 10/18/20.
//

import SwiftUI

struct DiceNumber: View {
    @Binding var resultSix: Int
    @State private var diceFace: DiceFace = .six
    @EnvironmentObject var data: HistoryData
    
    let cases = [DiceFace.one,.two,.three,.four,.five,.six]
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 250, height: 250)
            Rectangle()
                .frame(width: 240, height: 240)
                .foregroundColor(Color.white)
        switch diceFace {
        case .one:
            Circle()
                .frame(width: 50, height: 50)
        case .two:
            VStack {
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
                .foregroundColor(.white)
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
            }
            .padding(10)
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
                .foregroundColor(.white)
                }
            .padding(10)
            }
        case .three:
            VStack {
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
                .foregroundColor(.white)
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
            }
            .padding(5)
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
                }
            .padding(5)
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                }
            .padding(5)
            }
        case .four:
            VStack {
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
            }
            .padding(10)
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
            Circle()
                .frame(width: 50, height: 50)
                .padding(30)
                }
            .padding(10)
            }
        case .five:
            VStack {
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
            }
            .padding(5)
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
                }
            .padding(5)
            HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 30)
                }
            .padding(5)
            }
        case .six:
            HStack {
            VStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .padding(5)
                Circle()
                    .frame(width: 50, height: 50)
                    .padding(5)
                Circle()
                    .frame(width: 50, height: 50)
                    .padding(5)
            }
            .padding()
            VStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .padding(5)
                Circle()
                    .frame(width: 50, height: 50)
                    .padding(5)
                Circle()
                    .frame(width: 50, height: 50)
                    .padding(5)
                }
            .padding()
                }
            }
        }
        .onTapGesture {
            resultSix = Int.random(in: 0...5 )
            let newCase = cases[resultSix]
            diceFace = newCase
            data.historyResult.append(resultSix+1)
            
        }
        .onAppear {
            getTheRightFace()
        }
    }
    
    func getTheRightFace() {
        diceFace = cases[resultSix]
    }
}

enum DiceFace {
    case one, two, three, four, five, six
}



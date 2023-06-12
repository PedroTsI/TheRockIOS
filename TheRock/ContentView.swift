//
//  ContentView.swift
//  TheRock
//
//  Created by ifpb on 02/06/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var theRockVM: TheRockViewModel

    var body: some View {
        if self.theRockVM.gameStatus == .jogando {
            TheRockView(theRockVM: self.theRockVM)
        } else if self.theRockVM.gameStatus == .ganhou {
            WinView(theRockVM: self.theRockVM)
        } else {
            LoseView(theRockVM: self.theRockVM)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(theRockVM: TheRockViewModel())
    }
}

//
//  WinView.swift
//  TheRock
//
//  Created by ifpb on 12/06/23.
//

import SwiftUI

struct WinView: View {
    @ObservedObject var theRockVM: TheRockViewModel
    
    var body: some View {
        VStack {
            Text("Ganhou!!")
            Button("Jogar de novo") {
                self.theRockVM.reset()
            }
        }
    }
}

struct WinView_Previews: PreviewProvider {
    static var previews: some View {
        WinView(theRockVM: TheRockViewModel())
    }
}

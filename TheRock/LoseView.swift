//
//  LoseView.swift
//  TheRock
//
//  Created by ifpb on 12/06/23.
//

import SwiftUI

struct LoseView: View {
    @ObservedObject var theRockVM: TheRockViewModel

    var body: some View {
        VStack {
            Text("Perdeu!!")
            Button("Jogar de novo") {
                self.theRockVM.reset()
            }
        }
    }
}

struct LoseView_Previews: PreviewProvider {
    static var previews: some View {
        LoseView(theRockVM: TheRockViewModel())
    }
}

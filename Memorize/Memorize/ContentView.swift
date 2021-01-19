//
//  ContentView.swift
//  Memorize
//
//  Created by Leandro Pontes Berleze on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(0..<4) { i in
                HStack {
                    ForEach(0..<4) { j in
                        CardView()
                    }
                }
            }
        }
       
    }
}

struct CardView: View {
    var isFaceUp: Bool = false

    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0).foregroundColor(.orange)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(.orange)
            }
           
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

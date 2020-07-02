//
//  ContentView.swift
//  PolyDice
//
//  Created by Keith Lee on 2020/07/01.
//  Copyright © 2020 Keith Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    
    
    // add roll toggle
    // advantage/disadvantage toggle?
    // shows 2 rolls
    // arrow should point other way with d20 on the bottom
    // how to clear dice values?
    // store values in the button view itself
    
    
    var body: some View {
        
        VStack {
            HStack(alignment: .center) {
                Spacer()
                Image("fletching")
                
            }
            .offset(x: -15, y: -20)
            
            
            DieImageGesture(die: .d20, diceOrder: 1)
            DieImageGesture(die: .d12, diceOrder: 2)
            DieImageGesture(die: .d100, diceOrder: 3)
            DieImageGesture(die: .d10, diceOrder: 4)
            DieImageGesture(die: .d8, diceOrder: 5)
            DieImageGesture(die: .d6, diceOrder: 6)
            DieImageGesture(die: .d4, diceOrder: 7)
            
            
            Spacer()
        } // V Stack image png
            .padding(.all)
    }
}


extension ContentView {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  DieImageGesture.swift
//  PolyDice
//
//  Created by Keith Lee on 2020/07/02.
//  Copyright © 2020 Keith Lee. All rights reserved.
//

import SwiftUI

struct DieImageGesture: View {
    
    let die: Dice
    let diceOrder: Int
    @State var imagePos = CGPoint(
        x: DieImageGesture.screenWidth * 0.75,
        y: 0)
        
    @State var anim = Animation.spring()
    
    var body: some View {
        
        
        Image(self.die.imageName())
        .position(self.imagePos)
            .onAppear(perform: {
                self.imagePos.y = 0
            })
        .animation(anim)
        .gesture(DragGesture()
            .onChanged({
                value in
                self.anim = Animation.interactiveSpring()
                self.imagePos = value.location
            
            }) // onChanged
            .onEnded({
                value in
                self.imagePos = CGPoint(x: DieImageGesture.screenWidth * 0.75, y: 0)
                self.anim = Animation.spring(response: 0.2, dampingFraction: 0.1, blendDuration: 0)
            }) // onEnded
        ) // gesture
        
        
        
    }
}


// https://stackoverflow.com/a/57727718/11768138
extension DieImageGesture {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}


struct DieImageGesture_Previews: PreviewProvider {
    static var previews: some View {
        DieImageGesture(die: .d20, diceOrder: 1)
    }
}

//
//  AboutView.swift
//  color-guesser
//
//  Created by Brian Clow on 11/7/20.
//

import SwiftUI

struct AboutView: View {
    
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Directions:").font(.title2).padding(.bottom, 5)
                Text("Based on the RGB value above (three numbers), select the color you think is being represented. When you guess the answer you get 5 points and lose 1 point for each of the missed answers. This is one of the best games for the brain of web developers and designers, helping you to learn and understand the RGB color model.").padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 20)
                Text("What is RGB?").font(.title2).padding(.bottom, 5)
                Text("RGB (Red, Green, Blue) is a system of representing colors on a computer display. Each color is represented by three numbers, each ranging from 0 to 255. The first number represents red, the next represents green and the final number represents how much blue there is. The higher the number, the more of that color. So, for example (255, 0, 0) represents a full red color, because the number representing red is the highest possible value (255) and there is zero green and zero blue. (0, 0, 0) produces black and (255, 255, 255) produces white (see image). These 3 colors can be combined to produce any visible color. In this guess the color game, three random number are generated which, when combined, produce a color within the visible spectrum. This color system is used online in web deveopment and design. Visit Wikipedia to learn more.").padding(.leading, 20).padding(.trailing, 20)
                

            }.navigationBarTitle("About")
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

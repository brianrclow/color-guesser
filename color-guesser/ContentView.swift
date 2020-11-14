//
//  ContentView.swift
//  color-guesser
//
//  Created by Brian Clow on 11/5/20.
//

import SwiftUI


struct ContentView: View {
    
    @State var newColorText: String
    @State var red: Int
    @State var green: Int
    @State var blue: Int
    @State var newColor: Color
    @State var buttonText: String
    @State var resultText: String
    
    

    var body: some View {
        NavigationView {
            ZStack{
                Color.white.edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    Button("\(buttonText)") {
                        buttonText = setText(text: "New Game")
                        red = getRed()
                        green = getGreen()
                        blue = getBlue()
                        newColor = getNewColor(red: red,green: green,blue: blue)
                        newColorText = getNewColorText(red: red,green: green,blue: blue)
                    }
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(45)
                    Spacer()
                    Text("\(newColorText)")
                        .padding()
                        .foregroundColor(Color.black)
                        .font(.system(size: 30))
                    Spacer()
                    Text("\(resultText)")
                    Spacer()
                        VStack {
                            HStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                            }
                            HStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                            }
                            HStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                                
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(newColor)
                                    .frame(width:125, height: 125)
                            }
                        }
                    Spacer()
                }
            }.navigationBarTitle("Guess the Color")
            .navigationBarItems(trailing: NavigationLink(destination: AboutView()) { Image(systemName: "info.circle").foregroundColor(.black)})
        }
    }
}

    func setText(text:String) -> String {
        let newText = text
        return newText
    }

    func getRed() -> Int {
        let red = Int.random(in: 0...255)
        return red
    }

    func getGreen() -> Int {
        let green = Int.random(in: 0...255)
        return green
    }

    func getBlue() -> Int {
        let blue = Int.random(in: 0...255)
        return blue
    }

    func getNewColor(red: Int, green: Int, blue: Int) -> Color {
        let newColor = Color(red: Double(red)/Double(255),
                               green: Double(green)/Double(255),
                               blue: Double(blue)/Double(255))
        return newColor
    }

    func getNewColorText(red: Int, green: Int, blue: Int) -> String {
        let RGBtext = "RGB(\(red), \(green), \(blue))"
        return RGBtext
    }

    // getNewTile creates a new Tile for the UI
    //
    // Parameter: colorOfTile - the color to set the newly made Tile to
    func getNewTile(colorOfTile:Color) -> RoundedRectangle {
        let tile = RoundedRectangle(cornerRadius: 10.0)
            .fill(colorOfTile)
            .frame(width:125, height: 125)
        return tile as! RoundedRectangle
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(newColorText: "", red: 1, green:2, blue:3, newColor: Color(
                        red:1.0,
                        green:2.0,
                        blue:3.0), buttonText: "Start Game", resultText: "")
    }
}

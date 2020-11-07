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
    
    

    var body: some View {
        NavigationView {
            ZStack{
                Color.gray.edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    Button("new color") {
                        red = getRed()
                        green = getGreen()
                        blue = getBlue()
                        self.newColor = self.getNewColor(red: red,green: green,blue: blue)
                        self.newColorText = self.getNewColorText(red: red,green: green,blue: blue)
                    }
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(45)
                    Spacer()
                    Text("\(newColorText)")
                        .padding()
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                    Spacer()
                    
                    List {
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

                    }.padding(EdgeInsets.init(top: 0, leading: -20, bottom: 0, trailing: -20))
                    
                    

                    
                    
                        Spacer()
                }
            }.navigationBarTitle("Color Guesser", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: AboutView()) { Image(systemName: "i.circle").foregroundColor(.black)})
        }
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(newColorText: "RGB(1,2,3)", red: 1, green:2, blue:3, newColor: Color(
                        red:1.0,
                        green:2.0,
                        blue:3.0))
    }
}

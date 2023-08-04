//
//  AboutView.swift
//  coreML-starter
//
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
        VStack(alignment: .center){
            VStack(alignment: .center){
                Text("About ClosetCanvas!").font(Font.custom("Garet-Heavy", size: 60))
                Text("ClosetCanvas utilizes color theory to provide YOU with the best possible color combinations to complement your article of clothing, so YOU can confidently take on the real world with your wardrobe.")
                    .font(Font.custom("Garet-Heavy", size: 16))
                    .multilineTextAlignment(.center)
            }
            
            VStack{
                Text("Tips for taking your pic: ").font(Font.custom("Garet-Heavy", size: 40))
                Text("1. You shouldn’t be in the photo; just your article of clothing!").font(Font.custom("Garet-Heavy", size: 16))
                Text("2. Use natural lighting. Avoid extremely dark or bright lighting").font(Font.custom("Garet-Heavy", size: 16))
                Text("3. Zoom in on the article of clothing so that it is in full coverage of the camera").font(Font.custom("Garet-Heavy", size: 16))
                Text("4. Avoid putting the article of clothing against a messy background. White works best!").font(Font.custom("Garet-Heavy", size: 16))
            }
            VStack{
                Image("colorwheel2")
                Text("Some terms to know:").font(Font.custom("Garet-Heavy", size: 40))
                Text("Complementary: colors directly opposite each other on the color wheel").font(Font.custom("Garet-Heavy", size: 16))
                Text("Analogous: colors adjacent to each other on the color wheel").font(Font.custom("Garet-Heavy", size: 16))
                Text("Triadic: colors spaced equally apart on the color wheel (forms a triangle)").font(Font.custom("Garet-Heavy", size: 16))
                Text("Other: combos outside of color theory that go well with each other!").font(Font.custom("Garet-Heavy", size: 16))
            }
            
        }
    }
}

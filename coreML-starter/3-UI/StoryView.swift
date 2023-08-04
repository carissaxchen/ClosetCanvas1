//
//  StoryView.swift
//  coreML-starter
//

import SwiftUI

struct StoryView: View {
    @Environment(\.dismiss) var dismiss
    @State var label: String
    @State var emoji: String
    @State var complementary: String
    @State var analogous: String
    @State var triadic: String
    
    var body: some View {
        
        VStack(alignment: .center) {
            //Text(label.capitalized)
                //.font(Font.custom("Garet-Heavy", size: 20))
            
            //Spacer().frame(height: 30)
            
            HStack(alignment: .center){
                VStack(alignment: .center){
                    //Text()
                    Text(emoji)
                    //    .multilineTextAlignment(.leading)
                    Text("Complementary Color: " + complementary).multilineTextAlignment(.center)
                    Text("Analogous Colors: " + analogous).multilineTextAlignment(.center)
                    Text("Triadic Colors: " + triadic).multilineTextAlignment(.center)
                    Image("colorwheel1")
                }
                .padding()
                .font(Font.custom("Garet-Heavy", size: 30))
                
            }
        }// VStack
        .frame(width: 500)
        //.padding()
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(label: "", emoji: "", complementary: "", analogous: "", triadic: "")
    }
}

//
//  LaunchScreenView.swift
//  coreML-starter
//
//  
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        VStack {
            VStack {
                
                Image("closetcanvaslogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                
                Divider().frame(maxWidth: 300)
                
                VStack(spacing: 20) {
                    Text("This app uses the camera, AI (powered by ML), and color theory to provide you with the best color combinations for your clothes")
                    
                    Text("Click on the color when the camera is open to learn more!")
                }
                .padding()
                .multilineTextAlignment(.center)
                .font(Font.custom("Garet-Heavy", size: 20))
                
                HStack(spacing: 1) {
                    VStack {
                        Text("❤️")
                        Text("Red")
                    }
                    .padding()

                    VStack {
                        Text("🧡")
                        Text("Orange")
                    }
                    .padding()

                    VStack {
                        Text("💛")
                        Text("Yellow")
                    }
                    .padding()
                    
                    VStack {
                        Text("💚")
                        Text("Green")
                    }
                    .padding()
                    
                    VStack {
                        Text("💙")
                        Text("Blue")
                    }
                    .padding()
                    
                    VStack {
                        Text("💜")
                        Text("Purple")
                    }
                    .padding()
                    
                    VStack {
                        Text("🩷")
                        Text("Pink")
                    }
                    .padding()
                }
                
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                .padding()
                .frame(maxWidth: 600)
                .font(Font.custom("Garet-Heavy", size: 15))
                
                // start button
                NavigationLink(destination: ClassificationView()){
                    Text("Start")
                }
                .buttonStyle(RoundedRectButtonStyle(buttonColor: .blue))
                .padding()
                .font(Font.custom("Garet-Heavy", size: 15))
                
                // about page
                NavigationLink(destination: AboutView()){
                    Text("About Us")
                }
                .font(Font.custom("Garet-Heavy", size: 15))
            }
            .padding()
            .frame(maxWidth: 800)
            .background(Color.white)
            .cornerRadius(25)
            .shadow(radius: 5)
            
        }// VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: 0xD5F4FF, opacity: 1.0))
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            if #available(iOS 15.0, *) {
                LaunchScreenView()
                    .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
                    .previewInterfaceOrientation(.landscapeLeft)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

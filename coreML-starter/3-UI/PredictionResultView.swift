//
//  PredictionResultView.swift
//  coreML-starter
//

import SwiftUI

struct PredictionResultView: View {
    private(set) var labelData: Classification
    //@State var soundPlayer = SoundPlayer()
    //@State private var isPlaying = false
    @State private var showingSheet = false
    @State var labelName: String = ""

    
    var body: some View {
        
        VStack(alignment: .center) {
            Text(labelData.label.capitalized)
                .font(Font.custom("Garet-Heavy", size: 50))
            
            VStack(alignment: .center) {
                VStack{
                    if labelData.label == "Red" {
                        Button("❤️") {
                            showingSheet.toggle()
                            labelName = labelData.label
                        }
                        .sheet(isPresented: $showingSheet) {
                            StoryView(label: labelName, emoji: labelData.emoji, complementary: labelData.complementary, analogous: labelData.analogous, triadic: labelData.triadic)
                        }
                        .buttonStyle(RoundedRectButtonStyle(buttonColor: .red))
                        .padding()
                        .controlSize(.large)
                    }
                    
                    else if labelData.label == "Orange" {
                        
                        Button("🧡") {
                            
                            showingSheet.toggle()
                            labelName = labelData.label
                        }
                        .sheet(isPresented: $showingSheet) {
                            StoryView(label: labelName, emoji: labelData.emoji, complementary: labelData.complementary, analogous: labelData.analogous, triadic: labelData.triadic)
                        }
                        .buttonStyle(RoundedRectButtonStyle(buttonColor: .orange))
                        .padding()
                        
                    }
                    else if labelData.label == "Yellow" {
                        
                        Button("💛") {
                            
                            showingSheet.toggle()
                            labelName = labelData.label
                        }
                        .sheet(isPresented: $showingSheet) {
                            StoryView(label: labelName, emoji: labelData.emoji, complementary: labelData.complementary, analogous: labelData.analogous, triadic: labelData.triadic)
                        }
                        .buttonStyle(RoundedRectButtonStyle(buttonColor: .yellow))
                        .padding()
                        
                    }
                }

                if labelData.label == "Green" {
                    
                    Button("💚") {
                        
                        showingSheet.toggle()
                        labelName = labelData.label
                    }
                    .sheet(isPresented: $showingSheet) {
                        StoryView(label: labelName, emoji: labelData.emoji, complementary: labelData.complementary, analogous: labelData.analogous, triadic: labelData.triadic)
                    }
                    .buttonStyle(RoundedRectButtonStyle(buttonColor: .green))
                    .padding()
                    
                }
                else if labelData.label == "Blue" {
                    
                    Button("💙") {
                        
                        showingSheet.toggle()
                        labelName = labelData.label
                    }
                    .sheet(isPresented: $showingSheet) {
                        StoryView(label: labelName, emoji: labelData.emoji, complementary: labelData.complementary, analogous: labelData.analogous, triadic: labelData.triadic)
                    }
                    .buttonStyle(RoundedRectButtonStyle(buttonColor: .blue))
                    .padding()
                    
                }
                else if labelData.label == "Purple" {
                    
                    Button("💜") {
                        
                        showingSheet.toggle()
                        labelName = labelData.label
                    }
                    .sheet(isPresented: $showingSheet) {
                        StoryView(label: labelName, emoji: labelData.emoji, complementary: labelData.complementary, analogous: labelData.analogous, triadic: labelData.triadic)
                    }
                    .buttonStyle(RoundedRectButtonStyle(buttonColor: .purple))
                    .padding()
                    
                }
                
                else if labelData.label == "Pink" {
                    
                    Button("🩷") {
                        
                        showingSheet.toggle()
                        labelName = labelData.label
                    }
                    .sheet(isPresented: $showingSheet) {
                        StoryView(label: labelName, emoji: labelData.emoji, complementary: labelData.complementary, analogous: labelData.analogous, triadic: labelData.triadic)
                    }
                    .buttonStyle(RoundedRectButtonStyle(buttonColor: .pink))
                    .padding()
                    
                }
                
                
                
            }
             
        }
        .frame(width: 400)
        .padding()
    }
        
}

struct PredictionResultView_Previews: PreviewProvider {
    static var previews: some View {
        PredictionResultView(labelData: Classification(), labelName: "")
    }
}

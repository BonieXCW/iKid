//
//  DadView.swift
//  ikid
//
//  Created by stlp on 4/29/24.
//

import SwiftUI

struct DadView: View {

    @State private var flipped: Bool = false
    @State private var flashcardRotation = 0.0
    @State private var contentRotation = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(radius: 10)
                
                VStack {
                    Spacer()
                    
                    if flipped {
                        Text("A Walk")
                            .font(.title3)
                            .foregroundStyle(.black)
                    } else {
                        Text("What do you call a fly without wings?")
                            .font(.title3)
                            .foregroundStyle(.black)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            flipFlashCard()
                        }) {
                            Text("Next")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .frame(width: 80, height: 40)
                    }
                }
                .padding(20)
                .multilineTextAlignment(.center)
            }
            .frame(width: 300, height: 240)
            .rotation3DEffect(.degrees(contentRotation), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                flipFlashCard()
            }
            .rotation3DEffect(
                .degrees(flashcardRotation),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
        }
    }
    
    func flipFlashCard() {
        let animationTime = 0.5
        withAnimation(Animation.linear(duration: animationTime)) {
            flashcardRotation += 180
        }
        
        withAnimation(Animation.linear(duration: 0.001).delay(animationTime/2)) {
            flashcardRotation += 180
            flipped.toggle()
        }
    }
}

#Preview {
    DadView()
}

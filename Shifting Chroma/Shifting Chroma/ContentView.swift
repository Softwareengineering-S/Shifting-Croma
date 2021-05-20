//
//  ContentView.swift
//  Shifting Chroma
//
//  Created by Monique Shaqiri on 15.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var animationGradient = false
    @ State var shiftColors = false
    var body: some View {
        (Image("summer")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [.blue, .white, .green]),
                                       startPoint:  animationGradient ? .top :
                                        .topTrailing, endPoint: animationGradient ? .bottom :
                                            .topLeading).opacity(0.6))
            .hueRotation(.degrees(shiftColors ? 0 : 360))
            .animation(Animation.linear(duration: 10).repeatForever(autoreverses: true).speed(1.5))
            .onAppear(){
            self.animationGradient.toggle()
            self.shiftColors.toggle()
            
            }
        .edgesIgnoringSafeArea(.all)
    )
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
}

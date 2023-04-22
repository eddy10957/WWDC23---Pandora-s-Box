//
//  LinearGradientBG.swift
//  WWDC23
//
//  Created by Edoardo Troianiello on 07/04/23.
//

import SwiftUI

struct LinearGradientBG: View {
    @State var animateGradient : Bool =  false
    var body: some View {
        
        LinearGradient(colors: [
            Color("DarkBlue"),
            Color("Blue"),
            Color("LightBlue"),
            Color("CloudyBlue"),
            Color("Cyan")
        ], startPoint: .topLeading, endPoint: .bottomTrailing)
        .hueRotation(.degrees(animateGradient ? 15 : 0))
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                animateGradient.toggle()
            }
        }
    }
}

struct LinearGradientBG_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientBG()
    }
}

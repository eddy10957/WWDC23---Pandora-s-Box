import SwiftUI

struct StarryNight: View {
    @State private var gravitationalRotation = false
        
   
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ZStack {
                    Stars()
                        .rotationEffect(.degrees(self.gravitationalRotation ? 360 : 0.0))
                        .animation(.easeInOut(duration: 100).repeatForever(), value: gravitationalRotation)
                        .onAppear(perform: {
                            self.gravitationalRotation.toggle()
                        })
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            }
        }
    }
}

struct Stars: View {
    private let numStars: Int = 250
    var body: some View {
        ZStack {
            ForEach(0..<numStars) { _ in
                StarWrapper()
            }
        }
    }
}

struct StarWrapper: View {
    @State private var color: Color = Color(#colorLiteral(red: 0.5019607843137255, green: 0.5019607843137255, blue: 0.5019607843137255, alpha: 1.0))
    private let twinkleAnimationDuration: Double = 1.5
    private let minTwinkleInterval: Double = 1.0
    private let maxTwinkleInterval: Double = 5.0
    var twinkleAnimation: Animation {
        (Animation.linear(duration: twinkleAnimationDuration))
            .repeatForever(autoreverses: true)
    }
    var body: some View {
        Star()
            .foregroundColor(self.color)
            .onAppear(perform: {
                self.color = (Int.random(in: 1..<5) == 1) ? Color(#colorLiteral(red: 0.5019607843137255, green: 0.5019607843137255, blue: 0.5019607843137255, alpha: 1.0)) : Color(.white)
            })
            .animation(self.twinkleAnimation.delay(Double.random(in: minTwinkleInterval..<maxTwinkleInterval)))
    }
}

struct Star: View {
    private let minStarSize: CGFloat = 1.0
    private let maxStarSize: CGFloat = 10.0
    private let smallShadow: CGFloat = 5.0
    private let largeShadow: CGFloat = 15.0
    var body: some View {
        Circle()
            .frame(width: CGFloat.random(in: minStarSize..<maxStarSize), height: CGFloat.random(in: minStarSize..<maxStarSize))
            .offset(x: CGFloat.random(in: -1 * UIScreen.main.bounds.width..<UIScreen.main.bounds.width), y: CGFloat.random(in: -1 * UIScreen.main.bounds.height..<UIScreen.main.bounds.height))
            .shadow(color: Color.white, radius: (CGFloat.random(in: 1.0..<5.0) == 1.0) ? largeShadow : smallShadow)
    }
}


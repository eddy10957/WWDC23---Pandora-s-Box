//
//  SwiftUIView.swift
//  WWDC23
//
//  Created by Edoardo Troianiello on 12/04/23.
//

import SwiftUI

struct DecorationView: View {
    @State var height: CGFloat = UIScreen.main.bounds.height
    @State var width: CGFloat = UIScreen.main.bounds.width
    @State var startHeight: Double = UIScreen.main.bounds.height * 0.968
    @State var startWidth: Double = UIScreen.main.bounds.width * 0.03
    @State private var percentage: CGFloat = .zero
    @Binding var colors : [Color]
    @Binding var trim : Bool
    
    @State var animation = false
    @State var animationCaos = false
    
    var body: some View {
        ZStack {
            if trim {
                Path { shape in
                    
                    shape.move(to: CGPoint(x: startWidth, y: startHeight))

                    
                    while (shape.currentPoint!.x < width - (width * 0.239)){
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.08))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.11, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.05, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.03, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.06, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.11, y: shape.currentPoint!.y))
                        }
                    while(shape.currentPoint!.y > startHeight - ( height * 0.82)){
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x  + height*0.08, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.11))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.06, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.05))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.02, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.03))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.02, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.06))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.06, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.10))
                        }
                    
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.08))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.03))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.05))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.11))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.08, y: shape.currentPoint!.y ))
                    

                    while(shape.currentPoint!.x > startWidth + (width * 0.32)){
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.115, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.06, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.03, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.05, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.11, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.08))
                    }
                    
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.11, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.06, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.03, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.05, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.11, y: shape.currentPoint!.y))
                    
                    
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.09, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.07, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.03, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.05, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.12, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.09))
                    
                    
                    
                    while(shape.currentPoint!.y < height - (height * 0.172)){
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.10))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.06))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.03))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.05))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.11))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x  - height*0.08, y: shape.currentPoint!.y))
                    }
                    
                }
                
                .trim(from: 0, to: percentage )
                .stroke(LinearGradient(colors: colors, startPoint:  animationCaos ? .bottomLeading : .topTrailing, endPoint: .topLeading ), style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                .animation(.easeOut(duration: 4.0).repeatForever(autoreverses: true), value: percentage)
                .onAppear {
                    self.percentage = 1.0
                    self.animationCaos = true
                }
            }else{
                Path { shape in
                    
                    shape.move(to: CGPoint(x: startWidth, y: startHeight))

                    
                    while (shape.currentPoint!.x < width - (width * 0.239)){
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.08))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.11, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.05, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.03, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.06, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.11, y: shape.currentPoint!.y))
                        }
                    while(shape.currentPoint!.y > startHeight - ( height * 0.82)){
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x  + height*0.08, y: shape.currentPoint!.y))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.11))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.06, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.05))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.02, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.03))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.02, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.06))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.06, y: shape.currentPoint!.y ))
                            shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.10))
                        }
                    
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.08))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.03))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.05))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.11))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.08, y: shape.currentPoint!.y ))
                    

                    while(shape.currentPoint!.x > startWidth + (width * 0.32)){
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.115, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.06, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.03, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.05, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.11, y: shape.currentPoint!.y))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.08))
                    }
                    
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.11, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.06, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.03, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.05, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.11, y: shape.currentPoint!.y))
                    
                    
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.09, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.07, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.03, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.02))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x + width*0.05, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y - height*0.06))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x - width*0.12, y: shape.currentPoint!.y))
                    shape.addLine(to: CGPoint(x: shape.currentPoint!.x, y: shape.currentPoint!.y + height*0.09))
                    
                    
                    
                    while(shape.currentPoint!.y < height - (height * 0.172)){
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.10))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.06))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.03))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x - height*0.02, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y - width*0.05))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x + height*0.06, y: shape.currentPoint!.y ))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x , y: shape.currentPoint!.y + width*0.11))
                        shape.addLine(to: CGPoint(x: shape.currentPoint!.x  - height*0.08, y: shape.currentPoint!.y))
                    }
                    
                }
                .stroke(LinearGradient(colors: colors, startPoint:  animation ? .bottomLeading : .topTrailing, endPoint: .topLeading ), style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                .animation(.easeOut(duration: 7.0).repeatForever(), value: animation)
                .onAppear {
                    self.animation = true
                }
            }
            
        }
    }
}

struct DecorationView_Previews: PreviewProvider {
    static var previews: some View {
        DecorationView(colors: .constant([.clear, .black, .gray , .white]),trim: .constant(false))
    }
}

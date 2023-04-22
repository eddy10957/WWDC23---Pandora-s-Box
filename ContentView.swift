import SwiftUI

struct ContentView: View {
    @State var lockTap : Bool = false
    @State var pandora : Bool = false
    @State var colors : [Color] = [.clear, .gray,.black]
    @State var firstScene : Bool = true
    @State var counter : Int = 0


    @State var pandoraAnimation = false
    @State var glowAnimation = false
    @State var athena = false
    @State var aphrodite = false
    @State var hermes = false
    @State var trim = false
    @State var tapToContinue = true
    @State var tapToContinueAnimation = false
    @State var openChoice = false
    
    
    @StateObject var viewModel : PandorasStore = PandorasStore()
    
    
    @State var text : String = ""
    var body: some View {
        ZStack{
            if counter < 6{
                ZStack{
                    
                    
                    VStack{
                        if athena{
                            VStack{
                                Image("athenaNoBg")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 300)
                                if aphrodite {
                                    HStack{
                                        Image("aphroditeNoBg")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 300, height: 300)
                                        
                                        if hermes{
                                            Image("hermesNoBg")
                                                .resizable()
                                                .scaledToFit()
                                                .opacity(hermes ? 1 : 0)
                                                .frame(width: 300, height: 300)
                                        }
                                    }
                                    .animation(.easeIn(duration: 2), value: hermes)
                                    
                                    
                                }
                            }
                        }
                        
                        if pandora {
                            Image("babyPandora")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .padding(30)
                                .offset(y: pandoraAnimation ? 0 : -50)
                                .animation(.easeInOut(duration: 5).repeatForever(autoreverses: true), value: pandoraAnimation)
                                .onAppear{
                                    pandoraAnimation = true
                                }
                                .onDisappear{
                                    pandoraAnimation = false
                                }
                        }
                        
                        Text(text)
                            .font(.largeTitle)
                            .padding()
                            .multilineTextAlignment(.leading)
                        
                        if tapToContinue {
                            Text("Tap To Continue")
                                .font(.largeTitle)
                                .foregroundColor(tapToContinueAnimation ? .primary : .clear)
                                .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: tapToContinueAnimation)
                                .onAppear{
                                    tapToContinueAnimation = true
                                }
                        }
                    }
                }
                
                
            }else if counter < 17{
                ZStack{
                    StarryNight()
                    DecorationView(colors: $colors, trim: $trim)
                    VStack{

                            Image("babyPandora")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .padding(30)
                                .offset(y: pandoraAnimation ? 0 : -50)
                                .animation(.easeInOut(duration: 5).repeatForever(autoreverses: true), value: pandoraAnimation)
                                .onAppear{
                                    pandoraAnimation = true
                                }
                                .onDisappear{
                                    pandoraAnimation = false
                                }
                        
                        ZStack{
                            Image((11...13).contains(counter)  ? "boxOpenFilled" : "boxFilled"  )
                                .resizable()
                                .scaledToFit()
                                .frame(width: 500, height: 500)
                                .blur(radius: glowAnimation ? 0 : 50)
                                .animation(.easeInOut(duration: 2).repeatForever(), value: glowAnimation)
                                .onAppear{
                                    glowAnimation = true
                                }
                                .onDisappear{
                                    glowAnimation = false
                                }
                            
                            Image((11...13).contains(counter)  ? "boxOpenFilled" : "boxFilled")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 500, height: 500)
                        }
                        Text(text)
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width/1.5)
                    }
                }
            } else if (17...18).contains(counter){
                ZStack{
                    DecorationView(colors: $colors, trim: $trim)
                    
                    VStack{
                        Image((11...13).contains(counter) || openChoice  ? "boxOpenFilled" : "boxFilled"  )
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500, height: 500)
                            .scaleEffect(openChoice ? 1000 : 1, anchor: .center)
                            .animation(.linear(duration: 2), value: openChoice)

                        if counter > 15{
                            Text(text)
                                .font(.largeTitle)
                                .fontWeight(openChoice ? .heavy : .regular)
                                .foregroundColor(openChoice ? .black : .primary)
                                .multilineTextAlignment(.leading)
                                .frame(width: UIScreen.main.bounds.width/1.5)
                            
                        }
                        if counter == 17 && !openChoice{
                            HStack{
                                
                                
                                Button {
                                    if counter < viewModel.dialogs.count && counter > 16{
                                        counter += 1
                                        if !lockTap {
                                            typeWriter(internalCounter: counter)
                                            lockTap = true
                                        }
                                    }
                                } label: {
                                    Text("Guard It")
                                        .font(.largeTitle)
                                        .padding(.vertical, 10)
                                        .padding(.horizontal, 80)
                                        .foregroundColor(.primary)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(.white, lineWidth: 2)
                                        )
                                }
                                .padding()
                                
                                
                                Button {
                                    if counter < viewModel.dialogs.count && counter > 16{
                                        openChoice = true
                                        if !lockTap {
                                            typeWriter(internalCounter: counter)
                                            lockTap = true
                                        }
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                                            counter += 1
                                        }
                                        
                                    }
                                    

                                } label: {
                                    Text("Open It")
                                        .font(.largeTitle)
                                        .padding(.vertical, 10)
                                        .padding(.horizontal, 80)
                                        .foregroundColor(.primary)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(.white, lineWidth: 2)
                                        )
                                }
                                .padding()
                                
                                
                            }
                        }
                        
                    }
                }
                
            }else{
                Text(text)
                    .font(.largeTitle)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .onAppear{
                        typeWriter(internalCounter: counter)

                    }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
        .contentShape(Rectangle())
        .onTapGesture {
            tapToContinue = false
            if !lockTap && counter < 17 {
                typeWriter(internalCounter: counter)
                lockTap = true
                if (1...15).contains(counter) {
                    pandora = true
                }
                if  (3...5).contains(counter) {
                    athena = true
                    if (4...5).contains(counter){
                        aphrodite = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            hermes = true
                        }
                    }
                }
            }
        }
        .animation(.easeIn(duration: 1), value: counter == 6 || counter == 11 || counter == 17)
        .animation(.easeIn(duration: 1).delay(4), value: counter == 18)
        
    }
    
    
    
    
    
    
    func typeWriter(at position: Int = 0, internalCounter : Int) {
        let finalText = viewModel.dialogs[counter]
        if position == 0 {
            text = ""
        }
        if position < finalText.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                text.append(finalText[position])
                typeWriter(at: position + 1 , internalCounter: internalCounter)
            }
        }else{
            if counter < viewModel.dialogs.count - 1 {
                
                counter += 1
                if counter == 11 {
                    trim = true
                    colors = [ .clear, .clear , .red, .purple, .blue, .black]
                }
                if counter == 14  {
                    trim = false
                    colors = [.clear, .gray,.black]
                }
                lockTap = false
                
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

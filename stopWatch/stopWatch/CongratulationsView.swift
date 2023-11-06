//
//  CongratulationsView.swift
//  stopWatch
//
//  Created by 奥田彩乃 on 2023/11/05.
//

import SwiftUI

struct CongratulationsView: View {
    @State private var fallingImage = false
    @State private var LPosition = -400.0
    @State private var RPosition = -150.0
    @State private var centerPosition = -50.0
    
    let animation = Animation
         .linear(duration: 3.0)
         .repeatForever(autoreverses: false)
    
    
    var body: some View {
        VStack {
            ZStack{
                //TODO: ClapImageが表を通ってほしい
                HStack {
                    
                    Spacer()
                    
                    Image("Clap_image")
                        .resizable()
                        .frame(width: 90, height: 90)
                    
                        .offset(y: fallingImage ? UIScreen.main.bounds.height + 300 : LPosition)
                        .animation(fallingImage ? animation : .default, value: fallingImage)
                        .onAppear {
                            fallingImage = true
                        }
                    
                    
                    Spacer()
                    
                    Image("Clap_image")
                        .resizable()
                        .frame(width: 90, height: 90)
                    
                        .offset(y: fallingImage ? UIScreen.main.bounds.height + 300 : centerPosition)
                        .animation(fallingImage ? animation : .default, value: fallingImage)
                        .onAppear {
                            fallingImage = true
                        }
                    
                    
                    Spacer()
                    
                    Image("Clap_image")
                        .resizable()
                        .frame(width: 90, height: 90)
                    
                        .offset(y: fallingImage ? UIScreen.main.bounds.height + 300 : RPosition)
                        .animation(fallingImage ? animation : .default, value: fallingImage)
                        .onAppear {
                            fallingImage = true
                        }
                    
                    
                    Spacer()
                }
                
                
            }
            

                VStack {
                    
                    Image("Congraturation_icon_image")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    
                    
                    Text("10.00")
                        .font(.system(size: 100))
                        .bold()
                    
                }
                .padding(.bottom, 200)
            }.padding(.bottom, 200)
        }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}

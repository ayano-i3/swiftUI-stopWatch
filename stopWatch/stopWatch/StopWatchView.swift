//
//  StopWatchView.swift
//  stopWatch
//
//  Created by 奥田彩乃 on 2023/11/03.
//

import SwiftUI

struct StopWatchView: View {
    @State private var stopWatch: Double = 0.0
    
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()
                VStack {
                    Text(String("\(stopWatch)"))
                        .font(.system(size: 100))
                        .bold()
                        .onAppear() {
//                            start()
                        }
                        }
                
                }
                .padding(.top, 150)
                Spacer()
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        
                      
                    },label: {
                        Image("stop_button")
                            .resizable()
                            .frame(width: 150, height: 150)
                    })
                    .padding(.bottom, 200)
                }
                
            }
            //        .frame(maxWidth: .infinity, alignment: .center)
            
        }
    
    func start() {
        //TODO: 文字の進み方がおかしい
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ timer in
            stopWatch += 0.1
        }
    }
    
    func stop() {
        stopWatch = 0
//        Timer.invalidate()
    }
    
    }

struct StopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView()
    }
}

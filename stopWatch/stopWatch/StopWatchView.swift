//
//  StopWatchView.swift
//  stopWatch
//
//  Created by 奥田彩乃 on 2023/11/03.
//

import SwiftUI

struct StopWatchView: View {
    @State var stopWatch: Double = 0.0
    @State var timer: Timer? = nil
    
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()
                VStack {
                    Text(timeFormat(time: stopWatch))
                        .font(.system(size: 100))
                        .bold()
                        .onAppear() {
                            start()
                        }
                }
                
            }
            .padding(.top, 150)
            Spacer()
            
            VStack {
                Spacer()
                
                Button(action: {
                    stop()
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
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ _ in
                stopWatch += 0.1
            }
            
        }
    }
    
    func stop() {
        if let tmpTimer = timer {
            tmpTimer.invalidate()
        }
    }
        
        func timeFormat(time: Double) -> String {
            return String(format: "%.1f", time)
        }
        
    }
    
    struct StopWatchView_Previews: PreviewProvider {
        static var previews: some View {
            StopWatchView()
        }
    }


//
//  CountDownView.swift
//  stopWatch
//
//  Created by 奥田彩乃 on 2023/11/03.
//

import SwiftUI

struct CountDownView: View {
    @State private var countDown = 3
    @State private var StopWatchView = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        Text("\(countDown)")
            .font(.system(size: 200))
            .bold()
        //View表示した時にCountDown start!
            .onAppear() {
                countDown = 3
            }
        //timer 3→2→1
            .onReceive(timer) { _ in
                if countDown > 1 {
                    countDown -= 1
                } else {
                    StopWatchView = true
                    timer.upstream.connect().cancel()
                }
            }
        }
}

struct CountDownView_Previews: PreviewProvider {
    static var previews: some View {
        CountDownView()
    }
}

//
//  StopWatchView.swift
//  stopWatch
//
//  Created by 奥田彩乃 on 2023/11/03.
//

import SwiftUI

struct StopWatchView: View {
    var body: some View {
        VStack {
            
                Spacer()
            VStack {
                Text("0.0")
                    .font(.system(size: 100))
                    .bold()
            }
            .padding(.top, 150)
                Spacer()
            
            VStack {
                Button(action: {
                    //syori
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
}

struct StopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView()
    }
}

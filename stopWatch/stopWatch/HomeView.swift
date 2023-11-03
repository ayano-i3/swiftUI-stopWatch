//
//  HomeView.swift
//  stopWatch
//
//  Created by 奥田彩乃 on 2023/11/03.
//

import SwiftUI

struct HomeView: View {
    //フラグで画面遷移を制御する（NavigationStackを使用する）
    @State private var start = false
    @State private var isActive = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("10秒ピッタリで止めろ！")
                    .font(.title)
                    .bold()
                Spacer().frame(height: 50)
                
                Button(action: {
                    start.toggle()
                    isActive = true
                },label: {
                    Image("start_button")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .navigationDestination(isPresented: $start, destination: {
                            StopWatchView()
                        })
                }
    )
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

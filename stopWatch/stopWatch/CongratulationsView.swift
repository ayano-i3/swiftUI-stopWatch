//
//  CongratulationsView.swift
//  stopWatch
//
//  Created by 奥田彩乃 on 2023/11/05.
//

import SwiftUI

struct CongratulationsView: View {
    var body: some View {
        VStack {
        
            Image("Congraturation_icon_image")
                .resizable()
                .frame(width: 200, height: 200)


            
            Text("10.00")
                .font(.system(size: 100))
                .bold()
                .padding(.bottom, 200)
        }
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}

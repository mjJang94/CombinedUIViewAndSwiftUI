//
//  ContentView.swift
//  CombinedUIViewAndSwiftUI
//
//  Created by 장민종 on 2020/05/18.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            MyScrollView(text: "UIView is SwiftUI")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

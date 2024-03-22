//
//  ContentView.swift
//  HaruCapsule
//
//  Created by 김예림 on 3/22/24.
//

import SwiftUI

struct MainTapView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
            MapView()
                .tag(0)
            
            AddView()
                .tag(1)
            
            SaveView()
                .tag(2)
            
        }
    }
}

#Preview {
    MainTapView()
}

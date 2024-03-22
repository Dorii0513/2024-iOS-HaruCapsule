//
//  ContentView.swift
//  HaruCapsule
//
//  Created by 김예림 on 3/22/24.
//

import SwiftUI

struct MainTapView: View {
    var body: some View {
        TabView {
          MapView()
            .tabItem {
                Image(systemName: "map.fill")
            }
          Text("Another Tab")
            .tabItem {
              Image(systemName: "plus.circle.fill")
            }
          Text("The Last Tab")
            .tabItem {
              Image(systemName: "rectangle.fill")
            }
        }
        
        .cornerRadius(35)
        .font(.headline)
        .onAppear {
            UITabBar.appearance().backgroundColor = .black
        }==      }
}

#Preview {
    MainTapView()
}

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
        VStack{
            ZStack{
                
            }
            Spacer()
            
            ZStack(alignment: .center){
                Rectangle()
                    .cornerRadius(30)
                    .ignoresSafeArea()
                    .frame(width: 415, height: 100)
                    .foregroundColor(.tapBar)
                    
            
                HStack{
                    ForEach(0..<3, id: \.self) { number in
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "house")
                                .font(.system(size: 28
                                              , weight: .regular, design: .default))
                                .foregroundColor(.white)
                                .padding(.horizontal, 28)
                        })
                        
                    }
                    
                }
            }.frame(alignment: .bottom)
        }
    }
}

struct MainTapView_Previews: PreviewProvider {
    static var previews: some View {
        MainTapView()
    }
}


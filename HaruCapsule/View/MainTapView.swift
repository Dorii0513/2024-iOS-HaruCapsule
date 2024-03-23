//
//  ContentView.swift
//  HaruCapsule
//
//  Created by 김예림 on 3/22/24.
//

import SwiftUI

struct MainTapView: View {
    
    @State var selectedTab = 0
    
    let Icons = [
        "map",
        "add",
        "save"
    ]
    
    var body: some View {
        VStack{
            ZStack{
                switch selectedTab{
                case 0:
                    NavigationView{
                            MapView()
                    }
                case 1:
                    NavigationView{
                            AddView()
                    }
                default:
                    NavigationView{
                           SaveView()
                    }
                
                }
                
            }
            Spacer()
            
            ZStack(alignment: .center){
                Rectangle()
                    .cornerRadius(30)
                    .ignoresSafeArea()
                    .frame(width: 412, height: 90)
                    .foregroundColor(.tapBar)
                    
            
                HStack{
                    ForEach(0..<3, id: \.self) { number in
                        
                        Button(action: {
                            self.selectedTab = number
                        }, label: {
                            Image(selectedTab == number ? Icons[number] + ".fill" : Icons[number] + ".unfill")
                                .font(.system(size: 28
                                              , weight: .regular, design: .default))
                                .padding(.horizontal, 35)
                            
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


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
    
    @State var tag: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack{
                
//                ZStack {
//                    NavigationLink(destination: AddView(), tag: 1, selection: self.$tag) {
//                        EmptyView()
//                    }
               
                ZStack{
                    switch selectedTab{
                    case 0:
                        MapView()
                    case 1:
                        AddView()
                    default:
                        SaveView()
                    }
                    
                    NavigationLink(destination: AddView(), tag: 1, selection: self.$tag) {
                        EmptyView()
                    }
                    
                }.frame(width: .infinity, height: 700)
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
                                if number != 1 {
                                    self.selectedTab = number
                                } else if number == 1 {
                                    self.tag = 1
                                }
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
}

struct MainTapView_Previews: PreviewProvider {
    static var previews: some View {
        MainTapView()
    }
}


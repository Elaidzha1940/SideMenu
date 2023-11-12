//  /*
//
//  Project: SideMenu
//  File: SideMenuView.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.11.2023
//
//  */

import SwiftUI

struct SideMenuView: View {
    @State private var fontSize: CGFloat = 20
    @State private var fontSize1: CGFloat = 20
    @State private var fontSize2: CGFloat = 20
    @State private var fontSize3: CGFloat = 20
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            // 1
            Button(action: {
                withAnimation {
                    fontSize = (fontSize == 20) ? 30 : 20
                }
            }, label: {
                HStack {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .font(.system(size: fontSize, weight: .bold))
                .padding()
                .foregroundColor(.white)
                .padding(.top, 100)
            })
            
            // 2
            Button(action: {
                withAnimation {
                    fontSize1 = (fontSize1 == 20) ? 30 : 20
                }
            }, label: {
                HStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            })
            .font(.system(size: fontSize1, weight: .bold))
            .padding()
            .foregroundColor(.white)
            .padding(.top, 10)
            
            //3
            Button(action: {
                withAnimation {
                    fontSize2 = (fontSize2 == 20) ? 30 : 20
                }
            }, label: {
                HStack {
                    Image(systemName: "envelope.fill")
                    Text("Message")
                }
            })
            .font(.system(size: fontSize2, weight: .bold))
            .padding()
            .foregroundColor(.white)
            .padding(.top, 10)
            
            // 4
            Button(action: {
                withAnimation {
                    fontSize3 = (fontSize3 == 20) ? 30 : 20
                }
            }, label: {
                HStack {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            })
            .font(.system(size: fontSize3, weight: .bold))
            .padding()
            .foregroundColor(.white)
            .padding(.top, 10)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.gray.opacity(0.3))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SideMenuView()
        .preferredColorScheme(.dark)
}

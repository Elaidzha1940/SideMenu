//  /*
//
//  Project: SideMenu
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.11.2023
//
//  */

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    
    var body: some View {
        
        VStack {
            
            let drag = DragGesture()
                .onEnded {
                    if $0.translation.width < -100 {
                        withAnimation {
                            self.showMenu = false
                        }
                    }
                }
        }
        return NavigationLink {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
        }
    }
}

#Preview {
    ContentView()
    //.preferredColorScheme(.dark)
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
        }, label: {
            Text("Open Menu")
                .font(.system(size: 30, weight: .bold, design: .rounded))

        })
    }
}

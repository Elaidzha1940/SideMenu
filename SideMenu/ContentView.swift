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
        NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    let drag = DragGesture()
                        .onEnded {
                            if $0.translation.width < -100 {
                                withAnimation {
                                    self.showMenu = false
                                }
                            }
                        }
                    
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width / 2 : 0)
                        .disabled(self.showMenu ? true : false)
                    
                    if self.showMenu {
                        SideMenuView()
                            .frame(width: geometry.size.width / 2)
                            .transition(.move(edge: .leading))
                    }
                }
                // .gesture(drag)
            }
            .navigationTitle("Menu")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarTitleModifier()
            
                .navigationBarItems(leading: (
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.mint)
                    }
                ))
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}

// MARK: MainView
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
                .foregroundStyle(.mint)
        })
    }
}

// MARK: NavigationBarTitleModifier

struct NavigationBarTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .foregroundColor(.red)
    }
}

extension View {
    func navigationBarTitleModifier() -> some View {
        self.modifier(NavigationBarTitleModifier())
    }
}

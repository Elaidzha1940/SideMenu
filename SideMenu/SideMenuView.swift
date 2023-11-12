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
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.fill")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.gray )
                
                Text("Profile")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundStyle(.gray )
            }
            .padding(.top, 100)
            
            HStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.gray )
                
                Text("Home")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundStyle(.gray )
            }
            .padding(.top, 20)
            
            HStack {
                Image(systemName: "envelope")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.gray )
                
                Text("Message")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundStyle(.gray )
            }
            .padding(.top, 20)
            
            HStack {
                Image(systemName: "gear")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.gray )
                
                Text("Settings")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundStyle(.gray )
            }
            .padding(.top, 20)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.black)
    }
}

#Preview {
    SideMenuView()
}

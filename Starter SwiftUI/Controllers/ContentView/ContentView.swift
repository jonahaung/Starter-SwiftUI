//
//  ContentView.swift
//  Starter SwiftUI
//
//  Created by Aung Ko Min on 11/4/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    
                } label: {
                    Text("Square Button").modifier(SquareButton())
                }
                Button {
                    
                } label: {
                    Text("Yes").modifier(RoundedButton())
                }
                
                Text("Hello World! This is some texts and detail texts for testing")
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "plus").modifier(RoundedButton())
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Content View")
        .navigationBarItems(leading: NavigationItemLeading, trailing: NavigationItemTrailing)
    }
    
}

// SubViews
extension ContentView {
    
    private var NavigationItemTrailing: some View {
        return NavigationLink(destination: SettingsView()) {
            Image(systemName: "scribble").padding()
        }
    }
    
    private var NavigationItemLeading: some View {
        return NavigationLink(destination: Text("Detail View")) {
            Image(systemName: "applelogo").padding()
        }
    }
}

//
//  ContentView.swift
//  Cross-Platform
//
//  Created by Dr. Andreas Plagens on 13.04.22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            InsectListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(InsectData())
    }
}

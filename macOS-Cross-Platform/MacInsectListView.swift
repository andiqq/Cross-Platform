//
//  MacInsectListView.swift
//  macOS-Cross-Platform
//
//  Created by Dr. Andreas Plagens on 13.04.22.
//

import SwiftUI

struct MacInsectListView: View {
    
    @Binding var selectedInsect: Insect?
    
    @EnvironmentObject var insectData: InsectData
    
    var body: some View {
        List(selection: $selectedInsect) {
            ForEach(insectData.insects) { insect in
            MacInsectCellView(insect: insect).tag(insect)
        }
        }.listStyle(SidebarListStyle())
    }
}

struct MacInsectListView_Previews: PreviewProvider {
    static var previews: some View {
        MacInsectListView(selectedInsect: .constant(testInsect))
                .environmentObject(InsectData())
    }
}

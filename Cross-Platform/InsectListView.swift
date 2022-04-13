//
//  InsectListView.swift
//  Cross-Platform
//
//  Created by Dr. Andreas Plagens on 13.04.22.
//

import SwiftUI

struct InsectListView: View {
    
    @EnvironmentObject var insectData: InsectData
    
    var body: some View {
        List{
            ForEach(insectData.insects) { insect in
                NavigationLink(destination: InsectDetailView(insect: insect)) {
                    InsectCellView(insect: insect)
                }
            }
        }
        .navigationBarTitle("Insects", displayMode: .inline)
    }
}

struct InsectListView_Previews: PreviewProvider {
    static var previews: some View {
        InsectListView().environmentObject(InsectData())
    }
}

//
//  LandmarkList.swift
//  LandMarks
//
//  Created by José Javier Cueto Mejía on 21/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .previewDisplayName("iPhone 11 Pro Max")
    }
}

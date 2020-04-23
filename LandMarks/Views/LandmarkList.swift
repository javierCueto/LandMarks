//
//  LandmarkList.swift
//  LandMarks
//
//  Created by José Javier Cueto Mejía on 21/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView {
            
            List {
                Toggle(isOn: self.$userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks){ landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}

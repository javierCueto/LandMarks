//
//  LandmarkRow.swift
//  LandMarks
//
//  Created by José Javier Cueto Mejía on 21/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
           Group {
                 LandmarkRow(landmark: landmarkData[0])
                 LandmarkRow(landmark: landmarkData[1])
             }
             .previewLayout(.fixed(width: 300, height: 70))
        
    }
}

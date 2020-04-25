//
//  RotatedBadgeSymbol.swift
//  LandMarks
//
//  Created by José Javier Cueto Mejía on 25/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 30))
    }
}

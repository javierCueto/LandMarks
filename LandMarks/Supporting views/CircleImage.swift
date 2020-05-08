//
//  CilcleImage.swift
//  LandMarks
//
//  Created by José Javier Cueto Mejía on 20/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI
struct CircleImage: View {
    var image: Image
    var shadowRadius: CGFloat = 10

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: shadowRadius)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}

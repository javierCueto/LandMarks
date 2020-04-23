//
//  UserData.swift
//  LandMarks
//
//  Created by José Javier Cueto Mejía on 22/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: ObservableObject  {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}

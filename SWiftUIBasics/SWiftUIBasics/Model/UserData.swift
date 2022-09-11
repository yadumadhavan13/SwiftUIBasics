//
//  UserData.swift
//  SWiftUIBasics
//
//  Created by YADU MADHAVAN on 11/09/22.
//

import Foundation
import SwiftUI
import Combine

class UserData: ObservableObject {
    
    @Published var showOnlyFavourites = false
    
    @Published var landmarks = landmarksData
}



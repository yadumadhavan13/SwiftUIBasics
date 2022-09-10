//
//  LandMarkList.swift
//  SWiftUIBasics
//
//  Created by YADU MADHAVAN on 10/09/22.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        List(landmarks) { landamrk in
            LandMarkRow(landmark: landamrk)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}

//
//  LandMarkRow.swift
//  SWiftUIBasics
//
//  Created by YADU MADHAVAN on 10/09/22.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }.padding(.leading, 10)
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandMarkRow(landmark: UserData().landmarks[0])
            LandMarkRow(landmark: UserData().landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

//
//  CircleImageView.swift
//  SWiftUIBasics
//
//  Created by YADU MADHAVAN on 06/09/22.
//

import SwiftUI

struct CircleImageView: View {
    var landmarkImage: Image
    var body: some View {
        landmarkImage
            .clipShape(Circle())
            .overlay(Circle()
            .stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(landmarkImage: landmarks[0].image)
    }
}

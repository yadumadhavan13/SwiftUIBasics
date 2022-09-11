//
//  LandMarkDetail.swift
//  SWiftUIBasics
//
//  Created by YADU MADHAVAN on 06/09/22.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark: Landmark
    @EnvironmentObject var userData: UserData
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(of: landmark) ?? 0
    }
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300).ignoresSafeArea()
            CircleImageView(landmarkImage: landmark.image).offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Button {
                        userData.landmarks[landmarkIndex].isFavorite.toggle()
                    } label: {
                        if userData.landmarks[landmarkIndex].isFavorite {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star").foregroundColor(.gray)
                        }
                    }
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }.navigationTitle(landmark.name).navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landmark: landmarksData[0]).environmentObject(UserData())
    }
}

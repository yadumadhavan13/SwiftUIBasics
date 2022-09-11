//
//  LandMarkList.swift
//  SWiftUIBasics
//
//  Created by YADU MADHAVAN on 10/09/22.
//

import SwiftUI

struct LandMarkList: View {
    @EnvironmentObject var userData: UserData
    var filteredLandmarks: [Landmark] {
        userData.landmarks.filter { landmark in
            (!userData.showOnlyFavourites || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showOnlyFavourites) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandMarkDetail(landmark: landmark)
                    } label: {
                        LandMarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 13 Pro Max"], id: \.self) { deviceName in
            LandMarkList().environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

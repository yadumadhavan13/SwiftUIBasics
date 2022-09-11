//
//  LandMarkList.swift
//  SWiftUIBasics
//
//  Created by YADU MADHAVAN on 10/09/22.
//

import SwiftUI

struct LandMarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State var showFavouritesOnly = true
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouritesOnly) {
                    Text("Show Favourites")
                }
                ForEach(filteredLandmarks) {landmark in
                        NavigationLink(destination: LandMarkDetail(landmark: landmark)) {
                            LandMarkRow(landmark: landmark)
                        }
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 13 Pro Max"], id: \.self) { deviceName in
            LandMarkList().environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

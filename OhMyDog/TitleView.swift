//
//  TitleView.swift
//  OhMyDog
//
//  Created by Sebastian Rosas Maciel on 6/18/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct TitleView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Planetas")
                    .font(.extraLargeTitle)
                Model3D(named: "SolarSystem", bundle: realityKitContentBundle)
                
                NavigationLink(destination: DogSelectionView().clipShape(RoundedRectangle(cornerRadius: 25.0)).ignoresSafeArea()) {
                    Text("Ver Planetas")
                        .font(.extraLargeTitle2)
                        .padding()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    TitleView()
}

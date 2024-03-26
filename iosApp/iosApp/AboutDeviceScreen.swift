//
//  AboutDeviceScreen.swift
//  iosApp
//
//  Created by Egecan SERBESTER on 17.03.2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct AboutDeviceScreen: View {
    var body: some View {
      NavigationStack {
        AboutListView()
          .navigationTitle("About Device") // title
      }
    }
}

#Preview {
    AboutDeviceScreen()
}

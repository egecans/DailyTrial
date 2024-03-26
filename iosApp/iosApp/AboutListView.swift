//
//  AboutListView.swift
//  iosApp
//
//  Created by Egecan SERBESTER on 17.03.2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import shared
import SwiftUI

// struct View -> Composable = Returning UI
struct AboutListView: View {
    
  private struct RowItem: Hashable { // not in screen, therefore no need to vire
    let title: String
    let subtitle: String
  }

  private let items: [RowItem] = {
    let platform = shared.Platform()
    platform.logSystemInfo()
    
    // list of RowItemss
    var result: [RowItem] = [ // initalizing the list like makeItems in android
      .init(
        title: "Operating System",
        subtitle: "\(platform.osName) \(platform.osVersion)" // ${} = \()
      ),
      .init(
        title: "Device",
        subtitle: platform.deviceModel
      ),
      .init(
        title: "Density",
        subtitle: "@\(platform.density)x"
      )
    ]
    return result
  }()

  var body: some View {
    List {
      ForEach(items, id: \.self) { item in
        VStack(alignment: .leading) { // vStack = column
          Text(item.title)
            .font(.footnote)
            .foregroundStyle(.secondary)
          Text(item.subtitle)
            .font(.body)
            .foregroundStyle(.primary)
        }
        .padding(.vertical, 4)
      }
    }
  }
}

#Preview {
    AboutListView()
}

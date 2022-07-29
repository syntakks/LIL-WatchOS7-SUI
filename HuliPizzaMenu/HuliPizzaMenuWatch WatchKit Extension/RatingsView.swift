//
//  RatingView.swift
//  HuliPizzaMenu
//
//  Created by Steve Wall on 7/28/22.
//

import SwiftUI

struct RatingsView: View {
  let item: MenuItem
  
  var body: some View {
    VStack {
      Text(item.name)
      HStack {
        ForEach(1...MenuItem.MAX_RATING, id: \.self) { index in
          Image(systemName: imageNameFor(index: index))
            .resizable()
            .scaledToFit()
            .foregroundColor(.yellow)
        }
      }
      Image("\(item.id)_100w")
        .cornerRadius(10)
    }
    .navigationTitle("Back")
  }
  
  func imageNameFor(index: Int) -> String {
    return index > item.rating ? "star" : "star.fill"
  }
}

struct RatingView_Previews: PreviewProvider {
  static var previews: some View {
    RatingsView(item: MenuModel.menu[2])
  }
}

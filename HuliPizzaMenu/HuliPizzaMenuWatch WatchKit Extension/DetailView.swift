//
//  DetailView.swift
//  HuliPizzaMenu
//
//  Created by Steve Wall on 7/28/22.
//

import SwiftUI

struct DetailView: View {
  let item: MenuItem
  @Binding var selectedItem: Int?
  @Binding var selectedRow: Int?
  
  var body: some View {
    ScrollView {
      VStack {
        // Item Name
        HStack {
          Text(item.name)
          Spacer()
        }
        // Item Image
        Image("\(item.id)_100w")
          .cornerRadius(10)
        // Order Button
        Button(action: selectItem) {
          Text("Order")
        }
        // Item Description
        Text(item.description)
        // Ratings
        NavigationLink(destination: RatingsView(item: item)) {
          Text("Ratings")
        }
      }
      .navigationTitle("Back")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
  
  func selectItem() {
    self.selectedItem = self.item.id
    self.selectedRow = nil
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(
      item: MenuModel.menu[2],
      selectedItem: .constant(2),
      selectedRow: .constant(2)
    )
  }
}

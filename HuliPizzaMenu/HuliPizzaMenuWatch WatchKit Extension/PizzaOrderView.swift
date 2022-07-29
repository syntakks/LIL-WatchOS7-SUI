//
//  PizzaOrderView.swift
//  PizzaOrder
//
//  Created by Steven Lipton on 4/21/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct PizzaOrderView: View {
  @State var selectedItem:Int!
  @State var selectedRow:Int!
  var menuItems = MenuModel.menu
  
  var body: some View {
    GeometryReader{ geometry in
      VStack {
        Text(self.selectedItem != nil ? MenuModel.menu[self.selectedItem!].name :"Pick a Pizza")
        List{
          ForEach(self.menuItems) { item in
            NavigationLink(
              destination:
                DetailView(
                  item: item,
                  selectedItem: self.$selectedItem,
                  selectedRow: self.$selectedRow
                ),
              tag: item.id,
              selection: self.$selectedRow
            ) {
              RowView(menuItem: item)
            }// Navigation Link
          }// ForEach
        }// List
      }// VStack
    }// GeometryReader
  }
}

struct PizzaOrderView_Previews: PreviewProvider {
  static var previews: some View {
    PizzaOrderView()
  }
}

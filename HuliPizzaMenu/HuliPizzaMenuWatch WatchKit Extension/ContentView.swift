//
//  ContentView.swift
//  HuliPizzaMenuWatch WatchKit Extension
//
//  Created by Steve Wall on 7/28/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Huli Pizza Company")
        .bold()
        .foregroundColor(.green)
      Divider()
      PizzaOrderView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

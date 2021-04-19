//
//  ContentView.swift
//  Fructus
//
//  Created by Семён Рытенков on 03.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { item in
                FruitRowView(fruit: item)
                    .padding(.vertical, 4)
            } //: LIST
            .navigationTitle("Fruits")
        } //: NAVIGATION
    } //: BODY
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

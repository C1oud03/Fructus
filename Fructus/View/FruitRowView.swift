//
//  FruitRow.swift
//  Fructus
//
//  Created by Семён Рытенков on 19.04.2021.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black, radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(fruit.title)
                    .font(.title2)
                    .bold()
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            } //: VSTACK
        } //: HSTACK
    } //: BODY
}

// MARK: - PREVIEW

struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

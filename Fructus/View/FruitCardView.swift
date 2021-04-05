//
//  FruitCardView.swift
//  Fructus
//
//  Created by Семён Рытенков on 03.04.2021.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20.0) {
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.4)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeInOut(duration: 0.7)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(
                gradient: Gradient(colors: fruit.gradientColors),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    } //: BODY
}

// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}

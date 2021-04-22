//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Семён Рытенков on 22.04.2021.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com" )!)
                Image(systemName: "arrow.up.square")
            } //: HSTACK
            .font(.footnote)
        } //: GROUP BOX
    } //: BODY
}

// MARK: - PREVIEW

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

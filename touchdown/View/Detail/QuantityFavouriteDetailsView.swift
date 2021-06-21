//
//  QuantityFavouriteDetailsView.swift
//  touchdown
//
//  Created by Anderson Simões Vieira on 20/06/21.
//

import SwiftUI

struct QuantityFavouriteDetailsView: View {
    // MARK: - PROPERTY
    @State private var counter: Int = 0
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
                
        })//:HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}
// MARK: - PREVIEW
struct QuantityFavouriteDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
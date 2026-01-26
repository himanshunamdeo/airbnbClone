//
//  ListingItemView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 16/01/26.
//

import SwiftUI

struct ListingItemView: View {
    
    @State var isFavorite = false
    
    var body: some View {
        VStack(spacing: 8) {
            
            ListingImageCarousalView()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.bold)
                    Text("12 mi away")
                        .foregroundStyle(Color.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(Color.gray)
                    Text("$400 per night")
                        .fontWeight(.bold)
                }
                Spacer()
                RatingsView(ratings: .constant(4.9))
            }
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}

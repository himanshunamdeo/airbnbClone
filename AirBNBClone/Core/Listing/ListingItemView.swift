//
//  ListingItemView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 16/01/26.
//

import SwiftUI

struct ListingItemView: View {
    
    @State var isFavorite = false
    
    var images = ["pexels-30nudos-adicora-164429726-11437918",
                  "pexels-aasif-pathan-321950386-31222661",
                  "pexels-artbovich-7746042"]
    
    var body: some View {
        VStack(spacing: 8) {
            
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
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
                Image(systemName: "star.fill")
                Text("4.9")
                    .fontWeight(.bold)
            }
        }
        .tabViewStyle(.page)
        .padding()
    }
}

#Preview {
    ListingItemView()
}

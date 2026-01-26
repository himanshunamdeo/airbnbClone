//
//  ListingImageCarousalView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 26/01/26.
//

import SwiftUI

struct ListingImageCarousalView: View {
    
    var images = ["pexels-30nudos-adicora-164429726-11437918",
                  "pexels-aasif-pathan-321950386-31222661",
                  "pexels-artbovich-7746042"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousalView()
}

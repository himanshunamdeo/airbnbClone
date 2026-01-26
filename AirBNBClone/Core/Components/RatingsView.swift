//
//  RatingsView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 26/01/26.
//

import SwiftUI

struct RatingsView: View {
    
    @Binding var ratings: Float
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
            Text(ratings, format: .number.precision(.fractionLength(1)))
                .fontWeight(.bold)
        }
    }
}

#Preview {
    RatingsView(ratings: .constant(4.9))
}


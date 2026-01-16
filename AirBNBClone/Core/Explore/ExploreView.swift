//
//  ExploreView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 16/01/26.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 16, id: \.self) { _ in
                        ListingItemView()
                            .frame(height: 400)
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}

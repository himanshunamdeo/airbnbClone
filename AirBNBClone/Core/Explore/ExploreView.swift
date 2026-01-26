//
//  ExploreView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 16/01/26.
//

import SwiftUI

struct ExploreView: View {
    @StateObject private var exploreRouter = Router<Destinations>()
    
    var body: some View {
        NavigationStack(path: $exploreRouter.path) {
            mainScrollView
        }
        .environmentObject(exploreRouter)
    }
}

extension ExploreView {
    fileprivate var mainScrollView: some View {
        ScrollView {
            SearchFilterBarView()
            LazyVStack(spacing: 32) {
                ForEach(0 ... 16, id: \.self) { _ in
                    ListingItemView()
                        .frame(height: 400)
                        .onTapGesture {
                            exploreRouter.push(to: .ListingDetailsView)
                        }
                }
            }
        }
        .navigationDestination(for: Destinations.self) { destination in
            ExploreSubViewFactory.viewFactory(destination: destination)
        }
    }
}

#Preview {
    ExploreView()
}

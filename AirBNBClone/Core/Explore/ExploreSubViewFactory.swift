//
//  ExploreSubViewFactory.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 25/01/26.
//

import SwiftUI

struct ExploreSubViewFactory {
    
    @ViewBuilder
    static func viewFactory(destination: Destinations) -> some View {
        switch destination {
        case .ListingDetailsView:
            ListingDetailsView()
        }
    }
}

//
//  AppDestinations.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 25/01/26.
//

enum Destinations: Hashable {
    case ListingDetailsView
    
//    init() {}
}


enum SheetDestination: Identifiable, Hashable {
    
    case none
    
    var id: String {
        switch self {
        case .none:
            return ""
        }
    }
}

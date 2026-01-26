//
//  Router.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 25/01/26.
//

import Combine
import SwiftUI

class Router<T: Hashable>: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: SheetDestination?
    
    func push(to destination: T) {
        path.append(destination)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path = NavigationPath()
    }
    
    func presentSheet(destination: SheetDestination) {
        sheet = destination
    }
    
    func dismissSheet() {
        sheet = nil
    }
}

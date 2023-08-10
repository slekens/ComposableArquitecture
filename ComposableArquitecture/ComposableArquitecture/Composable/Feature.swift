//
//  Feature.swift
//  ComposableArquitecture
//
//  Created by Abraham Abreu on 10/11/22.
//

import Foundation
import ComposableArchitecture

struct CounterFeature: Reducer {
    
    struct State: Equatable {
        var counter = 0
    }
    
    enum Action {
        case increaseCounter
        case decreaseCounter
    }
    
    struct Environment {
        
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case .increaseCounter:
                    state.counter += 1
                    return .none
                case .decreaseCounter:
                    state.counter -= 1
                    return .none
            }
        }
    }
}

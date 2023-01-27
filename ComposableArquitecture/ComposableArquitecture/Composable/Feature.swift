//
//  Feature.swift
//  ComposableArquitecture
//
//  Created by Abraham Abreu on 10/11/22.
//

import Foundation
import ComposableArchitecture

struct Counter: ReducerProtocol {
    
    struct State: Equatable {
        var counter = 0
    }
    
    enum Action: Equatable {
        case increaseCounter
        case decreaseCounter
    }
    
    struct Environment {
        
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
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

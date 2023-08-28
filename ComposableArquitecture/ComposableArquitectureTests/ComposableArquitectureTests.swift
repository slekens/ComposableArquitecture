//
//  ComposableArquitectureTests.swift
//  ComposableArquitectureTests
//
//  Created by Abraham Abreu on 09/11/22.
//

import XCTest
import ComposableArchitecture
@testable import ComposableArquitecture

@MainActor
final class ComposableArquitectureTests: XCTestCase {

    func testFeatureIncrease() async throws {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        }
        await store.send(.increaseCounter) {
            $0.counter = 1
        }
        XCTAssertEqual(store.state.counter, 1)
    }
    
    func testFeatureDecrease() async throws {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        }
        await store.send(.decreaseCounter) {
            $0.counter = -1
        }
        XCTAssertEqual(store.state.counter, -1)
    }
}

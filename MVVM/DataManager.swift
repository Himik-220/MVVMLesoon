//
//  DataManager.swift
//  MVVM
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import Foundation

protocol DataManager{
    func obtainNumbers() -> [Int]
}
class DataManagerImplementation: DataManager {
    func obtainNumbers() -> [Int]{
        return [1, 2, 3, 4, 5, 6]
    }
}

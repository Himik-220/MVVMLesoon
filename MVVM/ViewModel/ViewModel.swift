//
//  ViewModel.swift
//  MVVM
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import Foundation

protocol ViewModelDelegate{
    var text: String { get set }
    var textDidChangedHendler: ((String) -> Void)? { get set }
    func obtainNumbers()
}

class ViewModel: ViewModelDelegate {
    var dataManger: DataManager!
    var text: String = ""{
        didSet{
            textDidChangedHendler?(text)
        }
    }
    
    var textDidChangedHendler: ((String) -> Void)?
    
    func obtainNumbers() {
        let numbers = dataManger.obtainNumbers()
        text = numbers.map({"\($0)"}).joined(separator: ",")
        
    }
    
    
    
}

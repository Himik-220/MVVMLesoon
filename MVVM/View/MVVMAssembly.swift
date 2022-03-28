//
//  MVVMAssembly.swift
//  MVVM
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import Foundation
import UIKit

class MVVMAssembly: NSObject {
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        guard let view = viewController as? MVVMViewController else { return }
        let viewModel = ViewModel()
        let dataManager = DataManagerImplementation()
        view.viewModel = viewModel
        viewModel.dataManger = dataManager
    }
}

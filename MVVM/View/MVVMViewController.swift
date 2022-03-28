//
//  ViewController.swift
//  MVVM
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import UIKit

class MVVMViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: ViewModelDelegate?{
        didSet{
            viewModel?.textDidChangedHendler = { [weak self]text in
                self?.textLabel.text = text
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func actionButtonDidPressed(_ sender: UIButton) {
        viewModel?.obtainNumbers()
    }
    
}


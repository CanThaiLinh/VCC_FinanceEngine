//
//  DemoSavingViewController.swift
//  Demo_VCC_FinanceEngine_Swift
//
//  Created by Thạch Lê on 28/02/2023.
//

import UIKit
import VCC_FinanceEngine
class DemoSavingViewController: UIViewController {

    @IBOutlet private weak var vieContent: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        let vie = VCC_FinaceManager.shared.getSavingsView()
        self.vieContent.addSubview(vie)
        vie.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vie.topAnchor.constraint(equalTo: self.vieContent.topAnchor),
            vie.bottomAnchor.constraint(equalTo: self.vieContent.bottomAnchor),
            vie.trailingAnchor.constraint(equalTo: self.vieContent.trailingAnchor),
            vie.leadingAnchor.constraint(equalTo: self.vieContent.leadingAnchor)
        ])
    }

}

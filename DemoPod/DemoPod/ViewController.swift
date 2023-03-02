//
//  ViewController.swift
//  DemoPod
//
//  Created by Thạch Lê on 02/03/2023.
//

import UIKit
import VCC_FinanceEngine

class ViewController: UIViewController {
    
    @IBOutlet weak var vieContent: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnDemoAllViewDidTap(_ sender: Any) {
        let vc = DemoAllViewController.fromNib()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func btnDemoSavingViewDidTap(_ sender: Any) {
        let vc = DemoSavingViewController.fromNib()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func btnDemoLoanViewDidTap(_ sender: Any) {
        let vc = DemoLoanViewController.fromNib()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func btnDemoPayViewDidTap(_ sender: Any) {
        let vc = DemoPayViewController.fromNib()
        self.navigationController?.pushViewController(vc, animated: false)
    }

}


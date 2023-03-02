//
//  UIViewController.swift
//  Demo_VCC_FinanceEngine_Swift
//
//  Created by Thạch Lê on 28/02/2023.
//

import Foundation
import UIKit
import Photos

extension UIViewController {
    class func fromStoryboard <T: UIViewController> (_ vc: T.Type,
                              storyboardName: String = "Main",
                              bundle: Bundle? = nil) -> T {
        
        let storyBoard = UIStoryboard(name: storyboardName, bundle: bundle)
        let identifier = String(describing: vc)
        let vc = storyBoard.instantiateViewController(withIdentifier: identifier) as! T
        
        return vc
    }
    
    class func fromNib(bundle: Bundle? = nil) -> Self {
        func instantiateFromNib<T: UIViewController>(bundle: Bundle? = nil) -> T {
            return T.init(nibName: String(describing: T.self), bundle: bundle)
        }

        return instantiateFromNib(bundle: bundle)
    }
    
    var safeAreaInsets: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            return window?.safeAreaInsets ?? .zero
        }
        
        return .zero
    }
    
}

extension UIViewController {
    
    func presentPush(_ viewControllerToPresent: UIViewController) {
        
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .push
        transition.subtype = .fromRight
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        view.window?.layer.add(transition, forKey: kCATransition)
        
        self.present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissPush() {
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .push
        transition.subtype = .fromLeft
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        self.dismiss(animated: false, completion: nil)
    }
    
}

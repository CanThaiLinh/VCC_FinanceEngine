//
//  UIView.swift
//  Demo_VCC_FinanceEngine_Swift
//
//  Created by Thạch Lê on 23/02/2023.
//

import Foundation
import UIKit

extension UIView {
    class func fromNib<T: UIView>(_ view: T.Type, bundle: Bundle = Bundle.main) -> T {
        guard let view = bundle.loadNibNamed(String(describing: T.self), owner: nil, options: nil)?.first as? T else {
            return T()
        }
        return view
    }
    
}


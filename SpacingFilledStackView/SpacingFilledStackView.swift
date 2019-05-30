//
//  SpacingFilledStackView.swift
//  SpacingFilledStackView
//
//  Created by Lyunho Kim on 31/05/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class SpacingFilledStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func createSeperator() -> UIView {
        let seperator = UIView()
        seperator.layer.bounds = CGRect(x: 0, y: 0, width: 5, height: self.layer.bounds.height)
        seperator.backgroundColor = UIColor.red
        
        return seperator
        
    }
    
    override func didAddSubview(_ subview: UIView) {
        if subview.tag == -1 {
            return
        }
        
        if self.subviews.count - 2 >= 0 {
            let seperator = createSeperator()
            seperator.tag = -1
            addArrangedSubview(seperator)
        }
    }
    
    
    
    
    
    
    

}

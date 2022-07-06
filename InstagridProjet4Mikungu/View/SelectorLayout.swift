//
//  SelectorLayout.swift
//  InstagridProjet4Mikungu
//
//  Created by Mikungu Giresse on 05/07/22.
//

import UIKit

class SelectorLayout: UIView {

   @IBOutlet private var layout1 : UIImageView!
   @IBOutlet private var layout2 : UIImageView!
   @IBOutlet private var layout3 : UIImageView!
    
   @IBOutlet private var selected1 : UIImageView!
   @IBOutlet private var selected2 : UIImageView!
   @IBOutlet private var selected3 : UIImageView!
    
    
    enum Select {
        case layout1, layout2, layout3
    }
    var select : Select = .layout2 {
        didSet {
           setSelect(select)
        }
    }
    
    private func setSelect(_ select: Select ) {
        switch select {
        case .layout1 :
            selected1.isHidden = true
        case .layout2 :
            selected2.isHidden = true
        case .layout3 :
            selected3.isHidden = true
            
        }
    }
}

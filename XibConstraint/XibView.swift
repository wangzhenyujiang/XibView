//
//  XibView.swift
//  XibConstraint
//
//  Created by 王振宇 on 2016/11/1.
//  Copyright © 2016年 王振宇. All rights reserved.
//

import UIKit

class XibView: UIView {
    @IBOutlet var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configView()
    }
    
    @IBAction func buttonClick(_ sender: AnyObject) {
        debugPrint("Button click")
    }
}

extension XibView {
    fileprivate func configView() {
        backgroundColor = UIColor.red
        
        let nib = Bundle.main.loadNibNamed("\(XibView.self)", owner: self, options: nil)
        view = nib?.first as? UIView
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        
        let item1 = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 20)
        let item2 = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -20)
        let item3 = NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 20)
        let item4 = NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: -20)
        
        addConstraint(item1)
        addConstraint(item2)
        addConstraint(item3)
        addConstraint(item4)
    }
}

//
//  ChildViewController.swift
//  Tutorial_XLPagerTabStrip
//
//  Created by 송우진 on 2021/02/22.
//

import UIKit
import SnapKit
import XLPagerTabStrip

class ChildViewController: UIViewController, IndicatorInfoProvider {
    
    var tabName: String = ""
    let tabNameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tabNameLabel)
        tabNameLabel.snp.makeConstraints { $0.center.equalToSuperview() }
        tabNameLabel.text = tabName
        tabNameLabel.textColor = .black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "\(tabName)")
    }
}

//
//  TabBarViews.swift
//  GaleryApp
//
//  Created by Bakdaulet Maulenov on 02.12.2023.
//

import UIKit

class TabBarViews: UIViewController{
    
    init(title: String) {
        
        super.init(nibName: nil, bundle: nil)

        self.title = title

        navigationController?.navigationBar.isTranslucent = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false


    }
}

//
//  MyController.swift
//  GaleryApp
//
//  Created by Bakdaulet Maulenov on 02.12.2023.
//

import UIKit

class MyController: UIViewController {
    func push(text: String) {
        navigationController?.pushViewController(AlbumProfile(), animated: true)
    }
}

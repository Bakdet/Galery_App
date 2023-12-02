//
//  TableViewCell.swift
//  GaleryApp
//
//  Created by Bakdaulet Maulenov on 02.12.2023.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    func cellImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        return imageView
    }
    
    func titleLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }
    
    var title1 = ""
    var title2 = ""
    var title3 = ""
    
    lazy var image1 = cellImageView()
    lazy var image2 = cellImageView()
    lazy var image3 = cellImageView()
    
    lazy var titleLabel1 = titleLabel()
    lazy var titleLabel2 = titleLabel()
    lazy var titleLabel3 = titleLabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        image1.layer.cornerRadius = 60
        image2.layer.cornerRadius = 60
        image3.layer.cornerRadius = 60
    }

  

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    private var view = UIView()
    private var view1 = UIButton()
    private var view2 = UIButton()
    private var view3 = UIButton()

    private func setupViews(){
        addSubview(view)
        
        view.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(150)
        }
        
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        view2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(150)
            make.top.bottom.equalToSuperview()
        }
        view1.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(50)
            make.height.equalTo(150)
        }
        view3.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(150)
        }
        
        setupColumns(view: view1, image1: image1, titleLabel1: titleLabel1)
        setupColumns(view: view2, image1: image2, titleLabel1: titleLabel2)
        setupColumns(view: view3, image1: image3, titleLabel1: titleLabel3)
    }
    
    private func setupColumns(view: UIView, image1: UIImageView, titleLabel1: UILabel) {
        
        view.addSubview(image1)
        view.addSubview(titleLabel1)
        
        image1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.height.equalTo(120)
        }
        
        titleLabel1.snp.makeConstraints { make in
            make.top.equalTo(image1.snp.bottom).offset(1)
            make.centerX.equalToSuperview()
        }
        
    }


    func configure(withImage image1: UIImage?,withImage image2: UIImage?, withImage image3: UIImage?, title1: String, title2: String, title3: String) {
        self.image1.image = image1
        self.image2.image = image2
        self.image3.image = image3
        self.titleLabel1.text = title1
        self.titleLabel2.text = title2
        self.titleLabel3.text = title3
        self.title1 = title1
        self.title2 = title2
        self.title3 = title3
        
    }
}


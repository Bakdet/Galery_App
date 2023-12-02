//
//  AlbumProfile.swift
//  GaleryApp
//
//  Created by Bakdaulet Maulenov on 02.12.2023.
//

import UIKit

class AlbumProfile: UIViewController, UIScrollViewDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            // Called when scrolling has come to a stop
            print("Scrolling ended")
    }
    
    private var avatar: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Gizmo"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private var imagePlay = UIImageView(image: UIImage(systemName: "play.circle"))
    
    private var scrollView = UIScrollView()
    
    private var image1 = UIImageView(image: UIImage(named: "Misty"))
    private var image2 = UIImageView(image: UIImage(named: "Nala"))
    private var image3 = UIImageView(image: UIImage(named: "Simba"))
    private var image4 = UIImageView(image: UIImage(named: "Gizmo"))
    private var image5 = UIImageView(image: UIImage(named: "Bella"))
    
    
    private var navBar: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        
        let label = UILabel()
        label.text = "Gizmo"
        
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(20)
        }
        return view
    }()

    private var titleView: UILabel = {
        let label = UILabel()
        label.text = "Gizmo"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    
    private var showMore: UILabel = {
        let label = UILabel()
        label.text = "Show More"
        label.textColor = .systemBlue
        return label
    }()
}

extension AlbumProfile{
    
    private func setupUI(){
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: 2 * view.frame.width, height: view.frame.height)
        scrollView.isPagingEnabled = true
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.bounces = true

        setupViews()
        setupControllers()
    }
    
    private func setupViews(){
        view.addSubview(navBar)
        view.addSubview(avatar)
        avatar.addSubview(titleView)
        avatar.addSubview(imagePlay)
        
        imagePlay.tintColor = .white
        
        view.addSubview(showMore)
        view.addSubview(scrollView)
        scrollView.addSubview(image1)
        scrollView.addSubview(image2)
        scrollView.addSubview(image3)
        scrollView.addSubview(image4)
        scrollView.addSubview(image5)
    }
    
    private func setupControllers(){
        navBar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        
        avatar.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(avatar.snp.width)
            make.top.equalTo(navBar.snp.bottom).offset(20)
        }
        
        titleView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        imagePlay.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
            make.width.height.equalTo(25)
        }
        
        showMore.snp.makeConstraints { make in
            make.top.equalTo(avatar.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(showMore.snp.bottom).offset(10)
            make.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
        
        image1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalTo(image1.snp.width)
        }
        
        image2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(image1.snp.trailing)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalTo(image1.snp.width)
        }
        
        image3.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(image2.snp.trailing)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalTo(image1.snp.width)
        }
        
        image4.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalTo(image1.snp.bottom)
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalTo(image4.snp.width)
        }
        
        image5.snp.makeConstraints { make in
            make.top.equalTo(image3.snp.bottom)
            make.leading.equalTo(image4.snp.trailing)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalTo(image5.snp.width)
        }
    }
}

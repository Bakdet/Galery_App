//
//  ViewController.swift
//  GaleryApp
//
//  Created by Bakdaulet Maulenov on 02.12.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    private var index = 0
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.frame = view.bounds
        tableView.separatorStyle = .none
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellIdentifier)

        setupUI()
    }
    
    private var navBar: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        
        let label = UILabel()
        label.text = "People & Pets"
        
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(20)
        }
        return view
    }()

    let data = ["Bella", "Simba", "Misty","Nala", "Gizmo", " "]
    let cellIdentifier = "Cats"


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count/3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
     
        cell.selectionStyle = .none
        cell.configure(withImage: UIImage(named: data[index]), withImage: UIImage(named: data[index+1]), withImage: UIImage(named: data[index+2]), title1: data[index], title2: data[index+1], title3: data[index+2])
        index += 3
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 165 // Set your desired height here
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            print("Selected row: \(indexPath.row + 1)")
    }
    
}

extension ViewController{
    
    private func setupUI(){
        
        view.backgroundColor = .white

        setupViews()
        setupControllers()
    }
    
    private func setupViews(){
        view.addSubview(navBar)
        view.addSubview(tableView)
    }
    
    private func setupControllers(){
        navBar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(navBar.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}


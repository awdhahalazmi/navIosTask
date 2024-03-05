//
//  SecondViewController.swift
//  navTask
//
//  Created by Awdhah Alazemi on 29/02/2024.
//

import UIKit
import SnapKit
class SecondViewController: UIViewController {
    var receviedData : String?
    let nameLabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        view.addSubview(nameLabel)
        setupUI()
        autoLayout()
        
        nameLabel.text = receviedData
        // Do any additional setup after loading the view.
    }
    func setupUI(){
        //MARK: Navigation Button
        
        nameLabel.text = receviedData
        nameLabel.tintColor = .black
        nameLabel.font = UIFont.boldSystemFont(ofSize: 13)
        nameLabel.layer.borderColor = UIColor.black.cgColor
        nameLabel.layer.borderWidth = 1
        nameLabel.textAlignment = .center
    }
    
    func autoLayout( ){
        nameLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            
            
            
            
        }}}

//
//  ViewController.swift
//  navTask
//
//  Created by Awdhah Alazemi on 29/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let detailButton = UIButton( )
 

    override func viewDidLoad() {
        title = "first view controller"

        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(detailButton)
        setupUI()
        autoLayout()
        
        detailButton.addTarget(self, action: #selector(navButtonTapped), for: .touchUpInside)
        

    }
    func setupUI(){
        //MARK: Navigation Button
        detailButton.setTitle("See details", for: .normal)
        detailButton.backgroundColor = .gray
        detailButton.tintColor = .white
        detailButton.layer.cornerRadius = 10
        
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 16, weight: .medium, scale: .medium)
        
        let symbolImage = UIImage(systemName: "person.text.rectangle.fill",withConfiguration: symbolConfig)
        
        detailButton.setImage(symbolImage, for: .normal)
        
        
    }
    
    func autoLayout( ){
        detailButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
    @objc func navButtonTapped( ){
        //nav code
        let secondVC = SecondViewController( )

        secondVC.receviedData = "Welcome to Details View!"
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    func setUPnavBar( ){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}


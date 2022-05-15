//
//  ViewController.swift
//  noStoryProject
//
//  Created by Sheeloff on 15.05.2022.
//

import UIKit
import SnapKit

final class MainViewController: UIViewController {
    
    private lazy var myLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "First label"
        myLabel.textColor = UIColor.systemBlue
        myLabel.textAlignment = .center
        return myLabel
    }()
    
    private lazy var myImageView: UIImageView = {
        let myImageView = UIImageView()
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myImageView.image = UIImage(named: "Схема распиновки БП ПК")
        myImageView.contentMode = .scaleAspectFit
        return myImageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myLabel)
        view.addSubview(myImageView)
        configureView()
    }
    
    private func configureView() {
        myLabel.snp.makeConstraints { make in
            make.top.equalTo(view).inset(100)
            make.leading.equalTo(view).inset(16)
            make.trailing.equalTo(view).inset(16)
        }
        
        myImageView.snp.makeConstraints { make in
            make.top.equalTo(myLabel.snp.bottom).offset(30)
            make.leading.equalTo(view).inset(30)
            make.trailing.equalTo(view).inset(30)
            make.size.height.equalTo(250)
        }
    }
    
}


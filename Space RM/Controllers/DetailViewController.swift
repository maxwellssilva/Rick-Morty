//
//  DetailViewController.swift
//  Space RM
//
//  Created by Maxwell da Silva e Silva on 22/06/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    private lazy var detailImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 8
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var genderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var specieLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var createdLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addComponentsDetailView()
    }
    
    func addComponentsDetailView() {
        view.addSubview(detailImage)
        view.addSubview(nameLabel)
        view.addSubview(genderLabel)
        view.addSubview(specieLabel)
        view.addSubview(statusLabel)
        view.addSubview(createdLabel)
    }

    func setupComponentsDetailView() {
        addComponentsDetailView()
        NSLayoutConstraint.activate([
            detailImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            detailImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            detailImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            nameLabel.topAnchor.constraint(equalTo: detailImage.bottomAnchor, constant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40),
            
            genderLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            genderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            genderLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40),
            
            specieLabel.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 10),
            specieLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            specieLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40),
            
            statusLabel.topAnchor.constraint(equalTo: specieLabel.bottomAnchor, constant: 10),
            statusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            statusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40),
            
            createdLabel.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
            createdLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            createdLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40)
        ])
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

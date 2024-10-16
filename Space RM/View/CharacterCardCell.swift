//
//  CharacterCardCell.swift
//  Space RM
//
//  Created by Maxwell da Silva e Silva on 30/05/24.
//

import UIKit

class CharacterCardCell: UITableViewCell {

    private lazy var personImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 8
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var personName: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir", size: 16)
        label.textColor = .darkGray
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var personSpecie: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir", size: 14)
        label.textColor = .systemGray
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "search"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var infoStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [personName, personSpecie])
        stackView.alignment = .leading
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Olha no código que deu ruim")
    }
    
    func set(character: CharacterModel) {
        personImage.image = character.image
        personName.text = character.name
        personSpecie.text = character.specie
    }
    
    func setupConstraints() {
        addSubview(personName)
        addSubview(personImage)
        addSubview(personSpecie)
        addSubview(infoButton)
        addSubview(infoStack)
        NSLayoutConstraint.activate([
            personImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            personImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            personImage.heightAnchor.constraint(equalToConstant: 80),
            personImage.widthAnchor.constraint(equalTo: personImage.heightAnchor),
            
            infoStack.centerYAnchor.constraint(equalTo: centerYAnchor),
            infoStack.leadingAnchor.constraint(equalTo: personImage.trailingAnchor, constant: 20),
            
            infoButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            infoButton.leadingAnchor.constraint(equalTo: infoStack.leadingAnchor, constant: 20),
            infoButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 12)
        ])
    }
}

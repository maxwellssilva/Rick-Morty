//
//  CharacterCardCell.swift
//  Space RM
//
//  Created by Maxwell da Silva e Silva on 30/05/24.
//

import UIKit

class CharacterCardCell: UITableViewCell {

    private lazy var characterImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 8
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var characterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Total error")
    }
    
    func set(character: Characters) {
        characterImage.image = character.image
        characterName.text = character.name
    }
    
    func setupConstraints() {
        addSubview(characterName)
        addSubview(characterImage)
        NSLayoutConstraint.activate([
            characterImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            characterImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            characterImage.heightAnchor.constraint(equalToConstant: 80),
            characterImage.widthAnchor.constraint(equalTo: characterImage.heightAnchor, multiplier: 16/9),
            
            characterName.centerYAnchor.constraint(equalTo: centerYAnchor),
            characterName.leadingAnchor.constraint(equalTo: characterImage.trailingAnchor, constant: 20),
            characterName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            characterName.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}

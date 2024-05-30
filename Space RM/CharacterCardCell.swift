//
//  CharacterCardCell.swift
//  Space RM
//
//  Created by Maxwell da Silva e Silva on 30/05/24.
//

import UIKit

class CharacterCardCell: UITableViewCell {

    var characterImage = UIImageView()
    var characterName = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConfigurationCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Total error")
    }
    
    func set(character: Characters) {
        characterImage.image = character.image
        characterName.text = character.name
    }
    
    func setConfigurationCell() {
        setupCharacterName()
        setupCharacterImage()
        setupConstraints()
    }
    
    func setupCharacterImage() {
        characterImage.layer.cornerRadius = 8
        characterImage.clipsToBounds = true
        characterImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupCharacterName() {
        characterName.numberOfLines = 0
        characterName.adjustsFontSizeToFitWidth = true
        characterName.translatesAutoresizingMaskIntoConstraints = false
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

//
//  ViewController.swift
//  Space RM
//
//  Created by Maxwell da Silva e Silva on 26/04/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    var characters: [Characters] = []
    
    struct Cells {
        static let charactersCell = "CharacterCardCell"
    }
    
    private var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 100
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Personagens"
        setupComponents()
        setTableViewDelegates()
        characters = fetchData()
    }

    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CharacterCardCell.self, forCellReuseIdentifier: Cells.charactersCell)
    }
    
    func setupComponents() {
        view.addSubview(searchBar)
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.charactersCell) as! CharacterCardCell
        let character = characters[indexPath.row]
        cell.set(character: character)
        return cell
    }
}

extension HomeViewController {
    
    func fetchData() -> [Characters] {
        let character1 = Characters(image: Images.rickSanchez, name: "Rick Sanchez")
        let character2 = Characters(image: Images.mortySmith, name: "Morty Smith")
        return [character1, character2]
    }
}

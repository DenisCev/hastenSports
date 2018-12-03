//
//  SportsMenListPresenter.swift
//  HastenSports
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright (c) 2018 Denis. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import Alamofire

final class SportsMenListPresenter {

    // MARK: - Private properties -

    private unowned var _view: SportsMenListViewInterface
    private var _interactor: SportsMenListInteractorInterface
    private var _wireframe: SportsMenListWireframeInterface
    private var _players: [Player] = [] { didSet{_view.reloadData()} }
    private var _playerSections: PlayerList = []
    
    // MARK: - Lifecycle -

    init(wireframe: SportsMenListWireframeInterface, view: SportsMenListViewInterface, interactor: SportsMenListInteractorInterface) {
        _wireframe = wireframe
        _view = view
        _interactor = interactor
    }
}

// MARK: - Extensions -

extension SportsMenListPresenter: SportsMenListPresenterInterface {
    func startFechData() {
        _interactor.getSportsMenList(){ [weak self] (response) -> (Void) in
            self?._handleSportsMenListResult(response.result)
        }
    }
    
    func numberOfSections() -> Int {
        return _playerSections.count
    }
    
    func numberOfItems() -> Int {
        return _players.count
    }
    
    func item(at indexpath: IndexPath) -> Player {
        return _players[indexpath.row]
    }
    
    func didSelectItem(at indexPath: IndexPath) {
        
    }
    
    func viewDidLoad() {
        startFechData()
    }
    
    // MARK: Utility
    
    func _handleSportsMenListResult(_ result: Result<PlayerList>) {
        switch result {
        case .success (let listObject):
            print(listObject[0])
            _playerSections = listObject
            
            for section in listObject {
                _players = section.players!
            }
            
        case .failure(let error):
            _wireframe.showErrorAlert(with: error.message)
        }
    }
}

//
//  FavouritesInteractor.swift
//  Pokespeare-sdk
//
//  Created Matteo Gazzato on 10/02/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class FavouritesInteractor {

	fileprivate let networkManager: FavouritesNetworkManagerProtocol
    weak var output: FavouritesInteractorOutput?

    init(networkManager: FavouritesNetworkManagerProtocol = FavouritesNetworkManager()){
        self.networkManager = networkManager
    }
}

extension FavouritesInteractor: FavouritesInteractorProtocol {
    func retrieveFavs() {
        let favsPokemon = Storage.getAllFavourites()
        output?.onFavsRetrieved(favsPokemon)
    }
}

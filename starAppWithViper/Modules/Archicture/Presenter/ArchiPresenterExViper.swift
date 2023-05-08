//
//  ArchiPresenterExViper.swift
//  pinino
//
//  Created by Marcelo Aguilar Bravo on 08/05/23.
//

import Foundation

extension ArchiPresenter: ArchiInteractorOutPutProtocol {
    
    //Module`s Funcionalities
    
    public func loadInicialMessageResponse(initialMessage message: String) {
        view?.showInicialMessage(initialMessage: message)
    }

}

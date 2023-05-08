//
//  ArchiPresenter.swift
//  pinino
//
//  Created by Marcelo Aguilar Bravo on 08/05/23.
//

import Foundation

public final class ArchiPresenter: ArchiPresenterProtocol {
    
    weak public var view: ArchiViewProtocol?
    public var router: ArchiRouterProtocol?
    public var interactor: ArchiInteractorInPutProtocol?
    
    
    //Module`s Funcionalities
    
    public func loadInicialMessage() {
        interactor?.loadInicialMessageRequest()
    }
    
    
    
}

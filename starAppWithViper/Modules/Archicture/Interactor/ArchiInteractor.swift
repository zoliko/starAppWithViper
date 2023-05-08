//
//  ArchiInteractor.swift
//  pinino
//
//  Created by Marcelo Aguilar Bravo on 08/05/23.
//

import Foundation

public final class ArchiInteractor: ArchiInteractorInPutProtocol {
   
    public var presenter: ArchiInteractorOutPutProtocol?
    
    //Module`s Funcionalities
    
    public func loadInicialMessageRequest() {
        presenter?.loadInicialMessageResponse(initialMessage: "Se cargo un mensaje inicial con viper")
    }
    
}

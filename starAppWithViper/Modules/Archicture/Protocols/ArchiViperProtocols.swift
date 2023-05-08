//
//  ArchiViperProtocols.swift
//  pinino
//
//  Created by Marcelo Aguilar Bravo on 08/05/23.
//

import UIKit

//MARK: - Router -
public protocol ArchiRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
    func changeView(from preview: ArchiViewProtocol, to nextView: Any?, withData: Any?)
}
//MARK: - interaction (View -> Presenter) -
public protocol ArchiPresenterProtocol: AnyObject {
    var view: ArchiViewProtocol? { get set }
    var router: ArchiRouterProtocol? { get set }
    var interactor: ArchiInteractorInPutProtocol? { get set }
    
    //Module`s Funcionalities
    
    func loadInicialMessage()
}
//MARK: - interaction (Presenter -> Interactor) -
public protocol ArchiInteractorInPutProtocol: AnyObject {
    var presenter: ArchiInteractorOutPutProtocol? { get set }
    
    //Module`s Funcionalities
    
    func loadInicialMessageRequest()
}
//MARK: - interaction (Interactor -> Presenter) -
public protocol ArchiInteractorOutPutProtocol: AnyObject {
    
    //Module`s Funcionalities
    
    func loadInicialMessageResponse(initialMessage message: String)
}
//MARK: - interaction (Presenter -> View) -
public protocol ArchiViewProtocol: AnyObject {
    
    //Module`s Funcionalities
    
    func showInicialMessage(initialMessage message: String)
}


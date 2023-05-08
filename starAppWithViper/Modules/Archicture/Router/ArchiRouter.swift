//
//  ArchiRouter.swift
//  pinino
//
//  Created by Marcelo Aguilar Bravo on 08/05/23.
//

import UIKit

typealias ArchiPresenterProtocols = ArchiPresenterProtocol & ArchiInteractorOutPutProtocol
public final class ArchiRouter: ArchiRouterProtocol {

    public static func createModule() -> UIViewController {
        
        guard let view = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "InitialViewControllerID")  as? InitialViewController
        else { return UIViewController() }
        
        let presenter: ArchiPresenterProtocols  = ArchiPresenter()
        view.presenter = presenter
        view.presenter?.view = view
        view.presenter?.router = ArchiRouter()
        view.presenter?.interactor = ArchiInteractor()
        view.presenter?.interactor?.presenter = presenter
        return view
    }
    
    public func changeView(from preview: ArchiViewProtocol, to nextView: Any?, withData data: Any?) {
        guard let baseView = preview as? UIViewController else { return }
        let nextView = getViewController(view: nextView, withData: data)
        baseView.present(nextView, animated: true)
    }
}

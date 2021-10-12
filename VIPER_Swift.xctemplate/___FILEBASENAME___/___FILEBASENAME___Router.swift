/// Copyright © ___YEAR___. ___PROJECTNAME___. All rights reserved.
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.
///
///  ___FILENAME___
///  ___PROJECTNAME___
///
///  Created by ___FULLUSERNAME___ on ___DATE___.
///  Using Swift ___DEFAULTTOOLCHAINSWIFTVERSION___
///  Running on macOS ___RUNNINGMACOSVERSION___
///

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___PresenterToRouterProtocol {

    static let shared = ___FILEBASENAMEASIDENTIFIER___()
    
    func createModule() -> ___VARIABLE_productName___ViewController {
        
        let view = ___VARIABLE_productName___ViewController()
        
        let presenter: ___VARIABLE_productName___ViewToPresenterProtocol & ___VARIABLE_productName___InteractorToPresenterProtocol = ___VARIABLE_productName___Presenter()
        let interactor: ___VARIABLE_productName___PresenterToInteractorProtocol = ___VARIABLE_productName___Interactor()
        let router: ___VARIABLE_productName___PresenterToRouterProtocol = ___FILEBASENAMEASIDENTIFIER___()
        
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
}

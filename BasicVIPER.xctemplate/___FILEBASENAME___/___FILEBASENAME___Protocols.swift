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

import Foundation

//MARK: Presenter
protocol ___VARIABLE_productName___ViewToPresenterProtocol: AnyObject {

    var view: ___VARIABLE_productName___PresenterToViewProtocol?{ get set }
    var interactor: ___VARIABLE_productName___PresenterToInteractorProtocol? {get set}
    var router: ___VARIABLE_productName___PresenterToRouterProtocol? {get set}

    /// Add here your methods to communicate between VIEW -> PRESENTER
    
}

//MARK: View
protocol ___VARIABLE_productName___PresenterToViewProtocol: AnyObject {
    
    /// Add here your methods to communicate between PRESENTER -> VIEW
     
}

//MARK: Interactor - Input
protocol ___VARIABLE_productName___PresenterToInteractorProtocol: AnyObject {
    
    /// Add here your methods to communicate between PRESENTER -> INTERACTOR
    
    var presenter: ___VARIABLE_productName___InteractorToPresenterProtocol?  { get set }
    func fetch___VARIABLE_productName___(result: String)
   
}

//MARK: Interactor - Output
protocol ___VARIABLE_productName___InteractorToPresenterProtocol: AnyObject {

    /// Add here your methods to communicate between INTERACTOR -> PRESENTER    
    func noticeShowLoading()
  
}

//MARK: Router
protocol ___VARIABLE_productName___PresenterToRouterProtocol: AnyObject {
    
    /// Add here your methods to communicate between PRESENTER -> ROUTER (WIREFRAME)
    
    func createModule()-> ___VARIABLE_productName___ViewController
    func goTo(viewController: ___VARIABLE_productName___ViewController)
}

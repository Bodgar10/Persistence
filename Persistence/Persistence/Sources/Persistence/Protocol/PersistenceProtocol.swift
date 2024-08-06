
import Foundation
import SwiftUI

public protocol PersistenceViewModelProtocol: ObservableObject {
    
    // MARK: - Initializer
    
    init(configuration: PersistenceConfigurationProtocol, bundleMainApp: Bundle)
}

public protocol PersistenceConfigurationProtocol: AnyObject {
    
    // MARK: - Properties
    
    var config: [String: AnyObject] { get set }
}

public protocol PersistenceCoordinatorProtocol: ObservableObject {

    // MARK: - Properties

    var path: NavigationPath { get set }

    // MARK: - Functions

    init(path: NavigationPath, configuration: PersistenceConfigurationProtocol, bundleMainApp: Bundle?)
    func push(page: PersistencePage)
    func popToRoot()
    func pop()
    
    associatedtype view: View
    func build(page: PersistencePage) -> view
}
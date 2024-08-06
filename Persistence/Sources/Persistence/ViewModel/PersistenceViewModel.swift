
import Combine
import Foundation
import SwiftUI

public class PersistenceViewModel: PersistenceViewModelProtocol {

    // MARK: - Properties

    private let configuration: PersistenceConfigurationProtocol
    private let bundleMainApp: Bundle

    // MARK: - Initializer

    public required init(configuration: PersistenceConfigurationProtocol, bundleMainApp: Bundle) {
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
}
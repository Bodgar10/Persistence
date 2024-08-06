
import Foundation
import SwiftUI

public struct PersistenceView<VM>: View where VM: PersistenceViewModelProtocol {

    // MARK: - Properties

    @ObservedObject var viewModel: VM

    // MARK: - Initialize

    public init( viewModel: VM) {
        self.viewModel = viewModel    
    }

    public var body: some View {
        Text("Persistence View")
    }
}

struct PersistenceView_Previews: PreviewProvider {
    static var previews: some View {
        PersistenceView(viewModel: PersistenceViewModel(configuration: configMock(), bundleMainApp: .main))
    }
}

class configMock: PersistenceConfigurationProtocol {
    var config: [String : AnyObject] = ["Any" : "Any" as AnyObject]
}
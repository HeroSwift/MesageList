
import UIKit

class MessageList: UITableView {
    
    private let messages = [TextMessage]()
    
    private let configuration: MessageListConfiguration!
    
    init(configuration: MessageListConfiguration) {
        self.configuration = configuration
    }
    
}

//
// MARK: - 数据源
//

extension MessageList: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let message = messages[ indexPath.row ]

        var cell = tableView.dequeueReusableCell(withIdentifier: LeftTextMessage.identifier)
        if cell == nil {
            cell = LeftTextMessage(configuration: configuration)
        }
        
        cell!.update(message)
        
        return cell!
        
    }
    
}



import UIKit

class MessageList: UITableView {
    
    private let messageList = [Message]()
    
    private var configuration: MessageListConfiguration!
    
    public convenience init(configuration: MessageListConfiguration) {
        self.init()
        self.configuration = configuration
        self.delegate = self
        self.dataSource = self
        self.separatorStyle = .none
        self.showsVerticalScrollIndicator = false
        self.rowHeight = UITableViewAutomaticDimension
        self.register(LeftTextMessageCell.self, forCellReuseIdentifier: "LeftTextMessage")
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        
        var messageCell: MessageCell?
        
        let message = messageList[ indexPath.row ]
        let isRight = configuration.isRightMessage(message: message)
        if message is TextMessage {
            if isRight {
                let cell = tableView.dequeueReusableCell(withIdentifier: "RightTextMessage")
                if cell == nil {
                    messageCell = LeftTextMessageCell()
                    messageCell?.create(configuration: configuration)
                }
                else {
                    messageCell = cell as? MessageCell
                }
            }
            else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "LeftTextMessage")
                if cell == nil {
                    messageCell = LeftTextMessageCell()
                    messageCell?.create(configuration: configuration)
                }
                else {
                    messageCell = cell as? MessageCell
                }
            }
        }

        
        messageCell?.update(message: message)
        
        return messageCell!
        
    }
    
}


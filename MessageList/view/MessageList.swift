
import UIKit

public class MessageList: UITableView {
    
    public var messageList = [Message]()
    
    private var configuration: MessageListConfiguration!
    
    public convenience init(configuration: MessageListConfiguration) {
        self.init()
        self.configuration = configuration
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.delegate = self
        self.dataSource = self
        self.separatorStyle = .none
        self.showsVerticalScrollIndicator = false
        self.estimatedRowHeight = 100
        self.rowHeight = UITableViewAutomaticDimension
        
        self.register(LeftTextMessageCell.self, forCellReuseIdentifier: "LeftTextMessage")
        self.register(RightTextMessageCell.self, forCellReuseIdentifier: "RightTextMessage")
        
        self.register(LeftImageMessageCell.self, forCellReuseIdentifier: "LeftImageMessage")
        self.register(RightImageMessageCell.self, forCellReuseIdentifier: "RightImageMessage")
        
        self.register(LeftAudioMessageCell.self, forCellReuseIdentifier: "LeftAudioMessage")
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//
// MARK: - 数据源
//

extension MessageList: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var messageCell: MessageCell?
        
        let message = messageList[ indexPath.row ]
        let isRight = configuration.isRightMessage(message: message)
        if message is TextMessage {
            if isRight {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "RightTextMessage") as? MessageCell
            }
            else {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "LeftTextMessage") as? MessageCell
            }
        }
        else if message is ImageMessage {
            if isRight {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "RightImageMessage") as? MessageCell
            }
            else {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "LeftImageMessage") as? MessageCell
            }
        }
        else if message is AudioMessage {
            if isRight {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "LeftAudioMessage") as? MessageCell
            }
            else {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "LeftAudioMessage") as? MessageCell
            }
        }

        messageCell?.setup(configuration: configuration, message: message)
        
        return messageCell!
        
    }
    
}



import UIKit

public class MessageList: UITableView {
    
    public var messageList = [Message]()
    
    private var configuration: MessageListConfiguration!
    
    public convenience init(configuration: MessageListConfiguration) {
        self.init()
        self.configuration = configuration
        self.backgroundColor = configuration.backgroundColor
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
        self.register(RightAudioMessageCell.self, forCellReuseIdentifier: "RightAudioMessage")
        
        self.register(LeftVideoMessageCell.self, forCellReuseIdentifier: "LeftVideoMessage")
        self.register(RightVideoMessageCell.self, forCellReuseIdentifier: "RightVideoMessage")
        
        self.register(EventMessageCell.self, forCellReuseIdentifier: "EventMessage")
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
                messageCell = tableView.dequeueReusableCell(withIdentifier: "RightAudioMessage") as? MessageCell
            }
            else {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "LeftAudioMessage") as? MessageCell
            }
        }
        else if message is VideoMessage {
            if isRight {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "RightVideoMessage") as? MessageCell
            }
            else {
                messageCell = tableView.dequeueReusableCell(withIdentifier: "LeftVideoMessage") as? MessageCell
            }
        }
        else if message is EventMessage {
            messageCell = tableView.dequeueReusableCell(withIdentifier: "EventMessage") as? MessageCell
        }

        messageCell?.bind(configuration: configuration, message: message)
        
        return messageCell!
        
    }
    
}


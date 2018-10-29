
public class Message {
    
    public var id: String
    
    public var user: User
    
    public var status: MessageStatus
    
    public var timestamp: Int
    
    init(id: String, user: User, status: MessageStatus, timestamp: Int) {
        self.id = id
        self.user = user
        self.status = status
        self.timestamp = timestamp
    }
    
}


public class EventMessage: Message {
    
    public var event: String
    
    public init(id: String, user: User, status: MessageStatus, time: String, event: String) {
        self.event = event
        super.init(id: id, user: user, status: status, time: time)
    }
    
}

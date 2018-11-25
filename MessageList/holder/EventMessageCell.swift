
import UIKit

class EventMessageCell: MessageCell {
    
    var eventView = InsetLabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create() {
        
        eventView.numberOfLines = 0
        eventView.textAlignment = .justified
        
        eventView.font = configuration.eventTextFont
        eventView.textColor = configuration.eventTextColor
        eventView.backgroundColor = configuration.eventBackgroundColor
        
        eventView.contentInsets = UIEdgeInsetsMake(
            configuration.eventPaddingVertical,
            configuration.eventPaddingHorizontal,
            configuration.eventPaddingVertical,
            configuration.eventPaddingHorizontal
        )
        
        if configuration.eventBorderRadius > 0 {
            eventView.clipsToBounds = true
            eventView.layer.cornerRadius = configuration.eventBorderRadius
        }
        
        eventView.preferredMaxLayoutWidth = getContentMaxWidth()
        
        eventView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(eventView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        
        topConstraint = NSLayoutConstraint(item: eventView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0)
        bottomConstraint = NSLayoutConstraint(item: eventView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            
            topConstraint,
            bottomConstraint,
            NSLayoutConstraint(item: eventView, attribute: .centerX, relatedBy: .equal, toItem: contentView, attribute: .centerX, multiplier: 1, constant: 0),
        
        ])
        
    }
    
    override func update() {
        
        let eventMessage = message as! EventMessage
        
        configuration.formatEvent(textView: eventView, event: eventMessage.event)
        
    }
    
}

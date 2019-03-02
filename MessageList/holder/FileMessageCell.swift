
import UIKit

class FileMessageCell: MessageCell {
    
    static let KB = 1024
    static let MB = 1024 * 1024
    
    var timeView = InsetLabel()
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()
    
    var bubbleView = InteractiveButton()
    
    var typeView = UIImageView()
    var titleView = UILabel()
    var sizeView = UILabel()
    
    var avatarTopConstraint: NSLayoutConstraint!
    
    var spinnerView = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
    
    var failureView = UIButton()
    
    override func create() {
        
        // 时间
        addTimeView(timeView)
        
        // 头像
        addAvatarView(avatarView)
        
        // 昵称
        addNameView(nameView)
        
        // 气泡
        bubbleView.cell = self
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(bubbleView)
        
        // 文件类型图标
        if configuration.fileMessageTypeBorderRadius > 0 {
            typeView.clipsToBounds = true
            typeView.layer.cornerRadius = configuration.fileMessageTypeBorderRadius
        }
        typeView.backgroundColor = configuration.fileMessageTypeBackgroundColor
        typeView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(typeView)
        
        // 文件名称
        titleView.numberOfLines = 2
        titleView.lineBreakMode = .byTruncatingMiddle
        titleView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleView)
        
        // 描述
        sizeView.numberOfLines = 1
        sizeView.lineBreakMode = .byTruncatingTail
        sizeView.textAlignment = .left
        sizeView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(sizeView)
        
        // spinner icon
        addSpinnerView(spinnerView)
        
        // failure icon
        addFailureView(failureView)
        
        addContentGesture(view: bubbleView)
        
        topConstraint = NSLayoutConstraint(item: timeView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0)
        bottomConstraint = NSLayoutConstraint(item: bubbleView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: 0)
        avatarTopConstraint = NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: timeView, attribute: .bottom, multiplier: 1, constant: 0)
        avatarTopConstraint.priority = .defaultLow
        
        contentView.addConstraints([
            topConstraint,
            bottomConstraint,
            avatarTopConstraint,
        ])
        
    }
    
    override func update() {
        
        let fileMessage = message as! FileMessage
        
        configuration.loadImage(
            imageView: avatarView,
            url: message.user.avatar,
            width: configuration.userAvatarWidth,
            height: configuration.userAvatarHeight
        )
        
        nameView.text = message.user.name
        nameView.sizeToFit()
        
        switch fileMessage.type {
        case .ppt:
            typeView.image = configuration.fileMessageTypePpt
            break
        default:
            break
        }
        
        // 撑起高度
        titleView.text = fileMessage.title != "" ? fileMessage.title : " "
        titleView.sizeToFit()
        
        let size = fileMessage.size
        let sizeString: String
        
        if size > FileMessageCell.MB {
            sizeString = "\(size / FileMessageCell.MB)M"
        }
        else if size > FileMessageCell.KB {
            sizeString = "\(size / FileMessageCell.KB)KB"
        }
        else {
            sizeString = "\(size)B"
        }
        
        sizeView.text = sizeString
        sizeView.sizeToFit()
        
        showStatusView(spinnerView: spinnerView, failureView: failureView)
        
        showTimeView(timeView: timeView, time: message.time, avatarView: avatarView, avatarTopConstraint: avatarTopConstraint)
        
    }
    
    override func createMenuItems() -> [UIMenuItem] {
        var items = [UIMenuItem]()
        
        if message.canShare {
            items.append(
                UIMenuItem(
                    title: configuration.menuItemShare,
                    action: #selector(InteractiveButton.onShare)
                )
            )
        }
        if message.canRecall {
            items.append(
                UIMenuItem(
                    title: configuration.menuItemRecall,
                    action: #selector(InteractiveButton.onRecall)
                )
            )
        }
        if message.canDelete {
            items.append(
                UIMenuItem(
                    title: configuration.menuItemDelete,
                    action: #selector(InteractiveButton.onDelete)
                )
            )
        }
        
        bubbleView.actions = items.map {
            return $0.action
        }
        
        return items
    }
}

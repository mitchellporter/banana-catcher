import UIKit
import SpriteKit

class Coconut: Throwable {
    
    init() {
        let texture = SKTexture(imageNamed: "coconut")
        super.init(texture: texture, size: texture.size(), categoryBitMask: CollisionCategories.Coconut)
    }
    
    convenience init(pos: CGPoint) {
        self.init()
        position = pos        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func throwForceY() -> CGFloat {
        return 19.0
    }
}

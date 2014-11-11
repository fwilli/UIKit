// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

 func drawRect(rect: CGRect)
{
    var startAngle: Float = Float(2 * M_PI)
    var endAngle: Float = 0.0
    
    // Drawing code
    // Set the radius
    let strokeWidth = 1.0
    let radius = CGFloat((CGFloat(frame.size.width) - CGFloat(strokeWidth)) / 2)
    
    // Get the context
    var context = UIGraphicsGetCurrentContext()
    
    // Find the middle of the circle
    let center = CGPointMake(frame.size.width / 2, frame.size.height / 2)
    
    // Set the stroke color
    CGContextSetStrokeColorWithColor(context, Colors.primaryColor().CGColor)
    
    // Set the line width
    CGContextSetLineWidth(context, CGFloat(strokeWidth))
    
    // Set the fill color (if you are filling the circle)
    CGContextSetFillColorWithColor(context, UIColor.clearColor().CGColor)
    
    // Rotate the angles so that the inputted angles are intuitive like the clock face: the top is 0 (or 2π), the right is π/2, the bottom is π and the left is 3π/2.
    // In essence, this appears like a unit circle rotated π/2 anti clockwise.
    startAngle = startAngle - Float(M_PI_2)
    endAngle = endAngle - Float(M_PI_2)
    
    // Draw the arc around the circle
    CGContextAddArc(context, center.x, center.y, CGFloat(radius), CGFloat(startAngle), CGFloat(endAngle), 0)
    
    // Draw the arc
    CGContextDrawPath(context, kCGPathStroke) // or kCGPathFillStroke to fill and stroke the circle
    
}
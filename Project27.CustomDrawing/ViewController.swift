//
//  ViewController.swift
//  Project27.CustomDrawing
//
//  Created by Igor Polousov on 23.03.2022.
//

import UIKit

// Возврат к тестовому коммиту

class ViewController: UIViewController {
    
    // sth
    
    @IBOutlet var imageView: UIImageView!
    var currentDrawType = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawRectangle()
        
    }

    @IBAction func redrawButton(_ sender: Any) {
        currentDrawType += 1
        
        if currentDrawType > 5 {
            currentDrawType = 0
        }
        
        switch currentDrawType {
        case 0:
            drawRectangle()
        default:
            break
        }
    }
    
    func drawRectangle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let image = renderer.image { ctx in
            //drawing code
            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        
        imageView.image = image

        // no drawings

    }
    
}


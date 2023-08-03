//
//  ViewController2.swift
//  PencilKitViewDemo
//
//  Created by PHN MAC 1 on 03/08/23.
//

import UIKit
import PencilKit

class ViewController: UIViewController {
    
    var canvasView: PKCanvasView!
    var toolPicker: PKToolPicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        uiConfiguration()
    }
    
    @IBAction func deleteBTnClick(_ sender: Any) {
        canvasView.drawing = PKDrawing()
    }
}

extension ViewController{
    private func uiConfiguration(){
        canvasView = PKCanvasView(frame: view.bounds)
        canvasView.backgroundColor = .systemBackground
        view.addSubview(canvasView)
         
        canvasView.tool = PKInkingTool(.pencil, color: .black, width: 5.0)
        canvasView.drawingPolicy = .anyInput
        canvasView.becomeFirstResponder()
        toolPicker = PKToolPicker()
        toolPicker.addObserver(canvasView)
        toolPicker.setVisible(true, forFirstResponder: canvasView)
    }
}

//
//  MyScrollView.swift
//  CombinedUIViewAndSwiftUI
//
//  Created by 장민종 on 2020/05/18.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct MyScrollView: UIViewRepresentable {
    
    var text: String
    
   
    
    func makeUIView(context: UIViewRepresentableContext<MyScrollView>) -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.delegate = context.coordinator
        
        scrollView.refreshControl = UIRefreshControl()
//        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
//        myLabel.text = text
//        scrollView.addSubview(myLabel)
        scrollView.refreshControl?.addTarget(context.coordinator, action: #selector(Coordinator.handleRefresh), for: .valueChanged)
        
        return scrollView
    }
    
    func updateUIView(_ uiView: UIScrollView, context: UIViewRepresentableContext<MyScrollView>) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate{
        var control: MyScrollView
        
        init(_ control: MyScrollView){
            self.control = control
        }
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            print("View is Scrolling")
        }
        
        @objc func handleRefresh(sender: UIRefreshControl){
            sender.endRefreshing()
        }
        
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView(text: "Hello World!")
    }
}

//
//  ContentView.swift
//  helloWorld
//
//  Created by space on 3/23/24.
//

import SwiftUI
import SwiftUI

struct ios: Hashable{
    let name : String
    let position : String
}



struct ContentView: View {
    var member = [
        ios(name: "김도형", position: "리드멘토"),
        ios(name: "은서우", position: "멘토"),
        ios(name: "박근경", position: "멘토"),
        ios(name: "황은지", position: "멘티"),
        ios(name: "이창희", position: "멘티"),
        ios(name: "이하빈", position: "멘티"),
        ios(name: "정수호", position: "멘티"),
        ios(name: "김학규", position: "멘티"),
        ios(name: "정성윤", position: "리드멘토"),
        ios(name: "임우주", position: "맨티")
    ]
    
    var body: some View{
        List{
            ForEach(member, id: \.self){ id in
                if id.position == "리드멘토" {
                    Text("🚗 \(id.name) \(id.position)")
                }
                else if id.position == "멘토" {
                    Text("🚕 \(id.name) \(id.position)")
                }
                else {
                    Text("🚙 \(id.name) \(id.position)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

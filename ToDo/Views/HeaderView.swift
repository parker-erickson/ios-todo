//
//  HeaderView.swift
//  ToDo
//
//  Created by Parker on 9/27/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        ZStack {
            VStack {
                Text(title)
                    .font(.system(size: 30))
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 15))
            }
            .padding(.top, 50)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                   subtitle: "Subtitle")
    }
}

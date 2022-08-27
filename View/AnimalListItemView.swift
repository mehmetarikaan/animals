//
//  AnimalListItemView.swift
//  Animals
//
//  Created by Mehmet Arıkan on 27.08.2022.
//

import SwiftUI

struct AnimalListItemView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 20))
            VStack(alignment: .leading, spacing: 8){
                Text("Lion")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text("deneme safdsf ds dsaf sdafsdf sdfsd ds fds fsdf sdaf sd fsd fsd fsd fsd fds fdsdsf sdf dsf sd fsdf sd fds fdsfsd fdsf ds fds fsd fsd f dsf dsfsdfdsfdsfsdf")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: VSTACK
        }//: HSTACK
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

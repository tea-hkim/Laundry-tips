//
//  DetergentInfoDetail3.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/05/05.
//

import SwiftUI

struct DetergentInfoDetail3: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image("detergent3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 390, height: 360)
                    .clipped()
                
                VStack {
                    HStack {
                        Text("섬유유연제 어떻게 사용할까요?")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.vertical, 31.5)
                        Spacer()
                    }
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis aliquam egestas feugiat nisl diam. Lacus neque scelerisque dolor aliquam dignissim. Hendrerit hendrerit diam morbi vitae magnis. Sed est tempor, elit non non. Eget nisl pharetra, vivamus tellus tincidunt. Feugiat tortor velit auctor justo, nec justo, blandit sed tempor. Vel faucibus vel suscipit in pellentesque erat. Sagittis et, sed dictumst urna mauris. Massa aenean eleifend ornare felis aliquet. Tortor, ac vitae commodo pellentesque aenean lectus vulputate augue amet. Et euismod sollicitudin congue sed etiam a accumsan sed. Nisl, eget enim purus eget consectetur ut condimentum sagittis nulla.Dignissim interdum felis, purus pulvinar est, porttitor integer. Eget leo sed leo sit. Donec faucibus luctus ac ipsum dui massa amet. Semper adipiscing adipiscing semper purus. Quis platea quam elementum egestas hac faucibus duis molestie. Nunc vitae interdum velit sollicitudin scelerisque. Quisque quis purus vel, amet elit orci egestas. Fermentum dolor tortor, etiam augue eget. Massa nec venenatis dui est ipsum venenatis lorem. Nisi consequat cras volutpat maecenas aliquet ullamcorper. Lacinia integer metus nibh sed adipiscing velit. A neque scelerisque congue sagittis viverra.Egestas in cursus tellus scelerisque sed faucibus. Vivamus aliquet et facilisi amet, bibendum in. Ut morbi lectus faucibus risus pharetra ac. Sed sit non.")
                }.frame(width: 330)
                
            } //VStack
            .frame(maxWidth: 390)
        } // ScrollView

    }
}

struct DetergentInfoDetail3_Previews: PreviewProvider {
    static var previews: some View {
        DetergentInfoDetail3()
    }
}

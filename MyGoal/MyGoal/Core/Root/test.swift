//
//  test.swift
//  MyGoal
//
//  Created by zahid khan on 12/3/23.
//

import SwiftUI

struct test: View {
    var body: some View {
        ZStack {
            Text ("Some View")
                .background(.red)
                .frame(width: 100, height: 100, alignment: .center)
                .background(.blue)
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}

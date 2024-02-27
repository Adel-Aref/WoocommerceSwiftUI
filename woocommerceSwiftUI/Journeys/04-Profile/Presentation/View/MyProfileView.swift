//
//  MyProfileView.swift
//  woocommerceSwiftUI
//
//  Created by Ahmed Mostafa Halim on 27/02/2024.
//

import SwiftUI
import Combine

struct MyProfileView: View {
    
    
    @StateObject var viewModel: ProfileViewModel = .init()

    
    var body: some View {
        NavigationStack{
            HStack(alignment:.top,spacing: 32){
                VStack(alignment: .leading ,spacing: 32, content: {
                    HStack(alignment: .center){
                        Spacer()
                        Image(systemName:"person.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
    //                        .cornerRadius(50)
                            .foregroundColor(.red)
                        Spacer()
                    }
                    VStack(alignment: .leading,spacing: 16){
                        Text("Full Name :")
                        Text("User Name :")
                        Text("Phone Number :")
                    }
                    Spacer()
                }).padding(16)
            }
            .navigationTitle("My Profile")
        }
    }
}

#Preview {
    MyProfileView()
}

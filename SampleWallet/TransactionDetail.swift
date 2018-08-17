//
//  TransactionDetail.swift
//  SampleWallet
//
//  Created by Akifumi Fujita on 2018/08/17.
//  Copyright © 2018年 Akifumi Fujita. All rights reserved.
//

import Foundation

struct TransactionDetail: Codable {
    
    let txid: String
    let address: String?
    let index: Int?
    let satoshi: Int64?
    let inputTxs: [TransactionDetail]?
    
    enum CodingKeys: String, CodingKey {
        case txid
        case address = "addr"
        case index = "n"
        case satoshi = "valueSat"
        case inputTxs = "vin"
    }
}

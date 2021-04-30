//
//  KinOperation.swift
//  KinBase
//
//  Created by Kik Interactive Inc.
//  Copyright © 2020 Kin Foundation. All rights reserved.
//

import Foundation

public protocol KinOperation {

}

public struct KinPaymentOperation: KinOperation {
    public let amount: Kin
    public let source: PublicKey
    public let destination: PublicKey
    public let isNonNativeAsset: Bool
}

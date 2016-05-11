//
//  InjectableProtocol.swift
//  SwiftInjectDemo
//
//  Created by 吴蕾君 on 16/5/11.
//  Copyright © 2016年 rayjuneWu. All rights reserved.
//

import Foundation

protocol Injectable {
  associatedtype InjectObject
  func inject(_: InjectObject)
  func assertDependencies()
}
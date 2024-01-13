//
//  CalculatorModule.swift
//  nativeTest
//
//  Created by geumyong seok on 1/13/24.
//

import Foundation

@objc(CalculatorModule)
class CalculatorModule:NSObject {
  
  @objc(executeCalc:numberA:numberB:resover:rejector:)
  public func executeCalc(_ action:String, numberA:Int, numberB:Int, resolver:RCTPromiseResolveBlock, rejector: RCTPromiseRejectBlock) -> Void{
    if (action == "plus") {
      resolver(numberA + numberB);
      return;
    }
    
    if (action == "minus") {
      resolver(numberA - numberB);
      return;
    }
    
    if (action == "multiply") {
      resolver(numberA * numberB);
      return;
    }
    
    if (action == "divide") {
      resolver(numberA / numberB);
      return;
    }
    
    rejector("not type", action, nil);
  }
  
}

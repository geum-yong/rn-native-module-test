import {NativeModules} from 'react-native';

export const excuteCalcuator = (
  action: 'plus' | 'minus' | 'divide' | 'multiply',
  numberA: number,
  numberB: number,
): Promise<number> => {
  return NativeModules.CalculatorModule.executeCalc(action, numberA, numberB);
};

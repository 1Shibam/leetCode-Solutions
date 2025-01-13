class Solution {
  String fractionAddition(String expression) {
    final regEx = RegExp(r'([+-]?\d+)/(\d+)');
    final matches = regEx.allMatches(expression);
    int numerator = 0;
    int denominator = 1;
    for(var match in matches){
        int currNumerator = int.parse(match.group(1)!);
        int currDenominator = int.parse(match.group(2)!);

        //solving fraction
        int commonDenominator = currDenominator * denominator;
        numerator = numerator*currDenominator + currNumerator*denominator;
        denominator = commonDenominator;
        //simplify
        int hcf = numerator.abs().gcd(denominator);
        numerator ~/= hcf;
        denominator ~/= hcf;
    }
    
     return "$numerator/$denominator";
  }
}
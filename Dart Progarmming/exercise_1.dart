/*
Exercise:

Develop a program to calculate the shipping cost based on
the destination zone and the weight of the package (you will be provided)

Calculate the shipping cost according to these conditions:
- If the destination zone is XYZ, the shipping cost is $5 per kilogram.
- If the destination zone is 'ABC', the shipping cost is $7 per kilogram.
- If the destination zone is PQR, the shipping cost is $10 per kilogram.

- If the destination zone is not 'XYZ, ABC, or 'PQR', display an error message.
*/

void main() {
  String destinationZone = "s";
  double weightInKgs = 6;

  var cost = switch (destinationZone) {
    'XYZ' => weightInKgs * 5,
    'ABC' => weightInKgs * 7,
    'PQR' => weightInKgs * 10,
    _ => Null
  };
  print(cost == Null ? "error" : "Billing cost  : ${cost}");
}

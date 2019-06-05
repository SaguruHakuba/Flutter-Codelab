String scream(int length)	=> "A${'a' * length}h!";

void main() {
  final values = [1,3,5,10,20,50];
  for (var v in values) {
    print(scream(v));
  }
  
  values.skip(2).take(3).map(scream).forEach(print);
}

var x = 0;
do {
  x += 1;
  console.log(x);
} while (x < 100);

while (x > 90) {
  x -= 1;
  console.log(x);
}

switch (x) {
  case 1:
    console.log("one");
    break;
  case 2:
    console.log("two");
    break;
  default:
    console.log("none");
}

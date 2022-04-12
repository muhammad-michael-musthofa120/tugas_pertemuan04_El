import "dart:io";

void main() {
//nomor01

  for (int a = 1; a <= 5; a++) {
    for (int b = 4; b >= a; b--) {
      stdout.write(" ");
    }
    for (int c = 1; c <= a; c++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
  stdout.write(" \n");

  // nomor02

  for (int a = 1; a <= 5; a++) {
    for (int b = 5; b >= a; b--) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
  stdout.write(" \n");

  // nomor03

  for (int a = 1; a <= 5; a++) {
    for (var b = 1; b < a; b++) {
      stdout.write("");
    }
    for (var c = 5; c >= a; c--) {
      stdout.write("*");
    }
    stdout.write("\n");
  }

  // nomor04

  for (int a = 1; a < 3; a++) {
    for (int b = 2; b >= a; b--) {
      stdout.write(" ");
    }

    for (int c = 1; c < c * 2; c++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
  for (int b = 3; b > 0; b--) {
    for (int c = 3; c > b; c--) {
      stdout.write(" ");
    }

    for (int d = 1; d < d * 2; d++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}

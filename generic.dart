class Pair<F, S> {
  F? first;
  S? second;

  Pair(this.first, this.second);

  void set1st(F value) {
    first = value;
  }

  void set2nd(S value) {
    second = second;
  }

  F? get1st() {
    return first;
  }

  S? get2nd() {
    return second;
  }
}

void main() {
  Pair<String, int> friend = new Pair("Megha", 02052001);
  print(friend.get1st());
  print(friend.get2nd());
}

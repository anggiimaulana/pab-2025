import 'pengemudi.dart';

class Motor {
  num? _cc;
  Pengemudi? _pengemudi;

  Motor({num? cc}) {
    this._cc = cc;
  }
  void setCc(num cc) => _cc;
  num getCc() => _cc!;
  void setPengemudi(Pengemudi pengemudi) {
    _pengemudi = pengemudi;
  }

  Pengemudi getPengemudi() => this._pengemudi!;
}

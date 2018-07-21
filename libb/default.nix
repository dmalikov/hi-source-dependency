{ mkDerivation, base, liba, stdenv }:
mkDerivation {
  pname = "libb";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base liba ];
  homepage = "[TBC]";
  license = stdenv.lib.licenses.bsd3;
}

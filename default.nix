{ mkDerivation, aeson, base, stdenv }:
mkDerivation {
  pname = "liba";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ aeson base ];
  homepage = "[TBC]";
  license = stdenv.lib.licenses.bsd3;
}

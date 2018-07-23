# repro-shadowed-deps
repro for https://github.com/Gabriel439/haskell-nix/issues/56

## How to reproduce

```
$> cd libb
$> nix-shell --command zsh
these derivations will be built:
  /nix/store/2ddm8i6my675a7lncm4frkcasprf5gxl-liba-0.1.0.0.drv
  /nix/store/7wmsgz49759pff7ikky2nksxn8cckr63-ghc-8.4.3-with-packages.drv
building '/nix/store/2ddm8i6my675a7lncm4frkcasprf5gxl-liba-0.1.0.0.drv'...
setupCompilerEnvironmentPhase
Build with /nix/store/nv4h00ma4lmwj9bnc8dhf9nzyj28d6ds-ghc-8.4.3.
ignoring (possibly broken) abi-depends field for packages
ignoring (possibly broken) abi-depends field for packages
unpacking sources
unpacking source archive /nix/store/nf0yf8xsi7l92ark5q08ddhrkh2syy9b-hi
source root is hi
patching sources
compileBuildDriverPhase
setupCompileFlags: -package-db=/private/tmp/nix-build-liba-0.1.0.0.drv-0/setup-package.conf.d -j1 -threaded
Loaded package environment from /private/tmp/nix-build-liba-0.1.0.0.drv-0/hi/.ghc.environment.x86_64-darwin-8.4.3
<command line>: cannot satisfy -package-id liba-0.1.0.0-inplace:
    liba-0.1.0.0-inplace is unusable due to missing dependencies:
      aeson-1.2.4.0-KPiiXcK6dELrtdAOauWhV
    (use -v for more information)
builder for '/nix/store/2ddm8i6my675a7lncm4frkcasprf5gxl-liba-0.1.0.0.drv' failed with exit code 1
cannot build derivation '/nix/store/7wmsgz49759pff7ikky2nksxn8cckr63-ghc-8.4.3-with-packages.drv': 1 dependencies couldn't be built
error: build of '/nix/store/7wmsgz49759pff7ikky2nksxn8cckr63-ghc-8.4.3-with-packages.drv' failed
```

## Technical details

```
$> nix-shell -p nix-info --run "nix-info -m"
 - system: `"x86_64-darwin"`
 - host os: `Darwin 16.7.0, macOS 10.12.6`
 - multi-user?: `yes`
 - sandbox: `no`
 - version: `nix-env (Nix) 2.0.2`
 - channels(m): `""`
 - channels(root): `"nixpkgs-18.09pre144939.14a9ca27e69, nixpkgs-unstable"`
 - nixpkgs: `/nix/var/nix/profiles/per-user/root/channels/nixpkgs`
 ```
 
 ```
 >> cabal --version
cabal-install version 2.2.0.0
compiled using version 2.2.0.1 of the Cabal library
```

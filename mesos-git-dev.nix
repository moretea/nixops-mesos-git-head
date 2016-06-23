with (import <nixpkgs> {} );
with pkgs;
{
  mesos = callPackage ./mesos-git {
    sasl = cyrus_sasl;
    inherit (pythonPackages) python boto setuptools wrapPython;
    pythonProtobuf = pythonPackages.protobuf2_5;
    perf = linuxPackages.perf;
  };
}

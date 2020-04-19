{ stdenv, python3Packages }:

python3Packages.buildPythonApplication rec {
  pname = "liquidctl";
  version = "1.3.3";

  src = python3Packages.fetchPypi {
    inherit pname version;
    sha256 = "d13180867e07420c5890fe1110e8f45fe343794549a9ed7d5e8e76663bc10c24";
  };

  buildInputs = with python3Packages; [
    pyusb
    hidapi
    docopt
  ];

  meta = with stdenv.lib; {
    description = "Cross-platform tool and drivers for liquid coolers and other devices";
    homepage = "https://github.com/jonasmalacofilho/liquidctl";
    license = licenses.gpl3;
    maintainers = with maintainers; [ ];
  };
}

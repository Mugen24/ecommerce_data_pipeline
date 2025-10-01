{
  description = "Project init";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let 
    system = "x86_64-linux";
    pkgs = import nixpkgs { 
      inherit system; 
    };
  in
  {
    devShells."${system}".default = pkgs.mkShell {
      packages = with pkgs; [
        terraform
      ];
      shellHook = ''
        export DEBUG=1
        if [ -f "./bin/activate" ]
        then
          source "./bin/activate"
        fi

      '';
    };
  };
}


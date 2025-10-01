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
      config.allowUnfree = true;
    };
  in
  {

    devShells."${system}".default = pkgs.mkShell {
      packages = with pkgs; [
        terraform
        awscli
      ];
      shellHook = ''
        export DEBUG=1
      '';
    };
  };
}


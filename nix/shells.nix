_: {
  perSystem =
    {
      pkgs,
      ...
    }:
    {
      devShells = {
        default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            go
            opentofu
            jsonnet-bundler
          ];
        };
      };
    };
}

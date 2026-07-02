{ self, ... }: {
  perSystem = { inputs', ... }: {
    packages = {
      default = inputs'.gomod2nix.legacyPackages.buildGoApplication {
        name = "libgenerator";
        src = self;
        modules = "${self}/gomod2nix.toml";
        doCheck = false;
      };
    };
  };
}

{
  description = "Custom flakes";

  outputs = { ... }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Rust flake";
      };
      go = {
        path = ./go;
        description = "Go flake";
      };
    };
  };
}

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
      python = {
        path = ./python;
        description = "Python flake";
      };
      c = {
	path = ./c;
	description = "C flake";
      };
    };
  };
}

class Portcrush < Formula
  desc "Beautiful TUI port manager"
  homepage "https://github.com/arthurrmp/portcrush"
  url "https://github.com/arthurrmp/portcrush/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9a0713800f9150e68fc8f69743215fb70ee4187c694d40c3b0a3d1029feadc17"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "listening", shell_output("#{bin}/portcrush --help 2>&1", 2)
  end
end

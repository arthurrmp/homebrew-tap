class Portcrush < Formula
  desc "Beautiful TUI port manager"
  homepage "https://github.com/arthurrmp/portcrush"
  url "https://github.com/arthurrmp/portcrush/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "07bcd2778a3433bcefa102e2908c80efd2927639503d7f9cdc52e9f2ab4c02a5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "listening", shell_output("#{bin}/portcrush --help 2>&1", 2)
  end
end

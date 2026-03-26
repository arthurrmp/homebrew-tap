class Portcrush < Formula
  desc "Beautiful TUI port manager"
  homepage "https://github.com/arthurrmp/portcrush"
  url "https://github.com/arthurrmp/portcrush/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b8f17beaf66b4196981e6379f2ce826aea0bfd8e3a2986acbc4e727c11e41b1f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "listening", shell_output("#{bin}/portcrush --help 2>&1", 2)
  end
end

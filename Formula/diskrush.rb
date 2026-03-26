class Diskrush < Formula
  desc "Blazing-fast disk benchmark TUI, built in Rust"
  homepage "https://github.com/arthurrmp/diskrush"
  url "https://github.com/arthurrmp/diskrush/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "2ae32e495f445847866709e2798e7825b044429415ede009e2dd5f4b2d1c029e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "diskrush", shell_output("#{bin}/diskrush --headless --json 2>&1", 1)
  end
end

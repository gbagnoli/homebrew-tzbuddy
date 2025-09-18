class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones"
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "0b88ed31ea945084d73a9d3052476f04e8b306bce31d6984d5d44b512c195f82"
  license "MIT"
  head "https://github.com/gbagnoli/tzbuddy.rs.git", branch: "main"

  bottle do
    root_url "https://github.com/gbagnoli/homebrew-tzbuddy/releases/download/tzbuddy-0.5.1"
    rebuild 3
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "2f6b8eaaa54efa65bbb4801c535ae9c2335ba75747ff4e3c126c6682e01ecd18"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1350c8dcb9ec6475e2456dfe893c259938d7d4536868da77cd2a3f6c0bd2acd6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3e7e7b31e8827465a8530ef7d67a7b70f8924b99bd4788c82a76d96be42af5ca"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "UTC", shell_output("#{bin}/tzbuddy -L UTC").strip
    assert_equal "UTC (UTC) Tue 13:07 19/08/2025 · | 13 |  14   15", \
                 shell_output("#{bin}/tzbuddy -z UTC -s 3 '2025-08-19 13:07'").strip
  end
end

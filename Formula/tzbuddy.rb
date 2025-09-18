class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones"
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "0b88ed31ea945084d73a9d3052476f04e8b306bce31d6984d5d44b512c195f82"
  license "MIT"
  head "https://github.com/gbagnoli/tzbuddy.rs.git", branch: "main"

  bottle do
    root_url "https://github.com/gbagnoli/homebrew-tzbuddy/releases/download/tzbuddy-0.5.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "31518a2c3499846ed84694387ba2b94c7bcbef8ed921ddec7abd60d3b42edccb"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ca18ee976db4a3f317097049448508e99de700c49c5b9f046241c39f8b886588"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "671a3deb7bb3d2ce48be82e82e2bee80f3b7d11460b834dc938a6cb0f249e6f3"
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

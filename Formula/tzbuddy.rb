class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones"
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "be0a0d454204559bc4c34f9adb7f09dece71bdb0587f32985e3703b30aad7c02"
  license "MIT"
  head "https://github.com/gbagnoli/tzbuddy.rs.git", branch: "main"

  bottle do
    root_url "https://github.com/gbagnoli/homebrew-tzbuddy/releases/download/tzbuddy-0.5.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "b6a3dd2deea551cd7a82964c3361b7a70f81b0ef96f1c216cb123bb4e61ff3f6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6c80e8b20bda0dabf080a4a1997dcc1def4e8d096541c8d3de43b5eb765184e5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1bf78b77999fbef457f3612927d2648d9f203121b1d7eae2d96da1c24ee7b1ca"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "UTC", shell_output("#{bin}/tzbuddy -L UTC").strip
    assert_equal "UTC (UTC) Tue 13:07 19/08/2025 · | 13 |  14   15",
                 shell_output("#{bin}/tzbuddy -z UTC -s 3 '2025-08-19 13:07'").strip
  end
end

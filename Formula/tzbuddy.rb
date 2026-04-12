class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones"
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "be0a0d454204559bc4c34f9adb7f09dece71bdb0587f32985e3703b30aad7c02"
  license "MIT"
  head "https://github.com/gbagnoli/tzbuddy.rs.git", branch: "main"

  bottle do
    root_url "https://github.com/gbagnoli/homebrew-tzbuddy/releases/download/tzbuddy-0.5.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "418e82e4412cbc675f961980b350314868344fdb1cd0f993569d8b59982c59e7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "08d1ec32178b38a90522627241f1d0dac0143f36adf89d3187f00144b0474a9b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "038b59e413a4e796686b91d6cd550b2262e36fe99bd54d1bf47d427f4785fb85"
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

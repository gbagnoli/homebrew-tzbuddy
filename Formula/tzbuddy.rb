class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones"
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "1ab847ccec170a0ad310de9d92210369467e8174a1f711030873b0d4bc1e9400"
  license "MIT"
  head "https://github.com/gbagnoli/tzbuddy.rs.git", branch: "main"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b0a699c147ec35574cd079c5665f174711dd329bb9a5d9bf264dd3e2b1172aaf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tzbuddy", "-z", "Europe/Rome"
    system "#{bin}/tzbuddy", "-L", "Africa"
  end
end

class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.1.10/tzbuddy-macos-amd64.tar.gz"
  sha256 "393a09c238768bcec0ec12dab1223a9ee42f8ae78051696f8a92069e1db94616"
  version "0.1.10"

  def install
    bin.install "tzbuddy"
  end
end

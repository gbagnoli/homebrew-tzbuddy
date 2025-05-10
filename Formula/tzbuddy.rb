class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.5.0/tzbuddy-macos-amd64.tar.gz"
  sha256 "9f222d740bd345b608011fd44bb9ed8bb1ad5a136516762c6e9d71747425b959"
  version "0.5.0"

  def install
    bin.install "tzbuddy"
  end
end

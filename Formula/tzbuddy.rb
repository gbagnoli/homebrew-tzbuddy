class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.4.2/tzbuddy-macos-amd64.tar.gz"
  sha256 "cdfc187a5708413ec52c7ff099c3e520f285cc7df91e84d23c96e3ff55865922"
  version "0.4.2"

  def install
    bin.install "tzbuddy"
  end
end

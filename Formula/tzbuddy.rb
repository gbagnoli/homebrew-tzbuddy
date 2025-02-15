class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.4.6/tzbuddy-macos-amd64.tar.gz"
  sha256 "f15f2be9bae40cb7719c6816deb877f491180debe153f370d157ee8b030400e1"
  version "0.4.6"

  def install
    bin.install "tzbuddy"
  end
end

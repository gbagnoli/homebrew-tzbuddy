class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.4.5/tzbuddy-macos-amd64.tar.gz"
  sha256 "9b19cfc477d26a82bd91cc5b3a28f2cc348f91e256d28ca822485eee27660931"
  version "0.4.5"

  def install
    bin.install "tzbuddy"
  end
end

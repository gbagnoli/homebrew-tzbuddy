class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.3.0/tzbuddy-macos-amd64.tar.gz"
  sha256 "a4fad6e0a4f5bb3922f0dd1bfb02bf62bc3887b128de730bbb70ee5f5bef0185"
  version "0.3.0"

  def install
    bin.install "tzbuddy"
  end
end

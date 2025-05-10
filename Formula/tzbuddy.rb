class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.5.1/tzbuddy-macos-amd64.tar.gz"
  sha256 "a0958c9d678cab50c2751a5a6175227730a5822baaf886bdb618fbec14f9c988"
  version "0.5.1"

  def install
    bin.install "tzbuddy"
  end
end

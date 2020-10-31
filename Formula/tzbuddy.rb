class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.1.9/tzbuddy-macos-amd64.tar.gz"
  sha256 "9aad20ee9dd8a37859c6da5d0b8e00eae1ca57e042555eefd5b5b2d8ca4446f0"
  version "0.1.9"

  def install
    bin.install "tzbuddy"
  end
end

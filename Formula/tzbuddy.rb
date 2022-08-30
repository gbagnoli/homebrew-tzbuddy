class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.3.1/tzbuddy-macos-amd64.tar.gz"
  sha256 "55937562a3149af792f559d29fcdf9ba5e47d704d5762ac8949ee2cf8711271d"
  version "0.3.1"

  def install
    bin.install "tzbuddy"
  end
end

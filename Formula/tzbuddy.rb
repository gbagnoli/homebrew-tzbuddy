class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.1.7/tzbuddy-macos-amd64.tar.gz"
  sha256 "1714cb360e933b796bbfdf49e67f6fb6dace7b8f8461d3f3b161e82d5d13d4d7"
  version "0.1.7"

  def install
    bin.install "tzbuddy"
  end
end

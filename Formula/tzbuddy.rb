class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.4.4/tzbuddy-macos-amd64.tar.gz"
  sha256 "862dba0c86edd793e45e2ea0f2a38f5d7e8545267b5be8a21503ed647a988ef0"
  version "0.4.4"

  def install
    bin.install "tzbuddy"
  end
end

class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.2.0/tzbuddy-macos-amd64.tar.gz"
  sha256 "313d3c91b6250fbbb813c931e9faea6a355fc61b5d12b882d477b2f5aa8bcc32"
  version "0.2.0"

  def install
    bin.install "tzbuddy"
  end
end

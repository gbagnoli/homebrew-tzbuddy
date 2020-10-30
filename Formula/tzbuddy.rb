class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.1.3/tzbuddy-macos-amd64.tar.gz"
  sha256 "1c890503e9af7f020b9b712ca736e8e0d39fd000880f2f4cfc616020b8c6a723"
  version "0.1.3"

  def install
    bin.install "tzbuddy"
  end
end

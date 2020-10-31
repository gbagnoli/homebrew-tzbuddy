class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/releases/download/v0.1.7/tzbuddy-macos-amd64.tar.gz"
  sha256 "713201487877079cad78b1a3361ea7fb21f84d5ef394913bdfdd747b1b56af50"
  version "0.1.6"

  def install
    bin.install "tzbuddy"
  end
end

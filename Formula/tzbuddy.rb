class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/archive/v0.1.6.tar.gz"
  sha256 "9c0e7ac1fbac4811249b0817883b3eba27803eecf80495403dfbec6d7755e663"
  version "0.1.6"

  def install
    bin.install "tzbuddy"
  end
end

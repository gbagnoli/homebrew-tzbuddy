class Tzbuddy < Formula
  desc "Simple cli to visualize times in different timezones."
  homepage "https://github.com/gbagnoli/tzbuddy.rs"
  url "https://github.com/gbagnoli/tzbuddy.rs/archive/v0.1.5.tar.gz"
  sha256 "bded659743a7fbc81ca1849f19dcb4f790c6910b3d8ade587d9d803ae0f82ea5"
  version "0.1.5"

  def install
    bin.install "tzbuddy"
  end
end

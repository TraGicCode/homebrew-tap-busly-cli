class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.60.0/busly-cli-v0.60.0-osx-arm64.tar.gz"
  version "0.60.0"
  sha256 "9646013aac80f50a94e663d41947891f821e27eea14cb48cd2bb9787eba443ed"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end

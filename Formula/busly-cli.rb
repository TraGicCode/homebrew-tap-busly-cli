class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.62.0/busly-cli-v0.62.0-osx-arm64.tar.gz"
  version "0.62.0"
  sha256 "d0950a874b0c17c78cc658cfa3e5a316e02af00c825d913080f6d4b0d523f2dc"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end

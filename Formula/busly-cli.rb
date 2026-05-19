class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.3/busly-cli-v0.64.3-osx-arm64.tar.gz"
  version "0.64.3"
  sha256 "3c9154d820700651d3608c1d0149b7e35616ded49fbaf8cafa49d7ce74dcbc9f"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end

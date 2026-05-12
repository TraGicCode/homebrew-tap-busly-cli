class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.1/busly-cli-v0.64.1-osx-arm64.tar.gz"
  version "0.64.1"
  sha256 "e861bdcb02c63971054f255167294219a807b8aadb7376199a1442a57e7eb301"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end

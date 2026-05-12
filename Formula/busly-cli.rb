class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.63.0/busly-cli-v0.63.0-osx-arm64.tar.gz"
  version "0.63.0"
  sha256 "a15262055e71a1f84e2700599329cfc1526f80601a83e5c1ff939637dd5fa661"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end

class KrokiCli < Formula
  desc "Kroki CLI"
  homepage "https://github.com/yuzutech/kroki-cli"
  url "https://github.com/yuzutech/kroki-cli/releases/download/v0.5.0/kroki-cli_0.5.0_darwin_amd64.tar.gz"
  sha256 "d7d6f3c300cd34fe654bf3dfdce225b2a1a861f57301c25de711a9687fc5205f"
  license "MIT"

  def install
    bin.install "kroki"
  end
end

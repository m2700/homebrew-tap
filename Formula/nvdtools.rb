class Nvdtools < Formula
  desc "A set of tools to work with the feeds (vulnerabilities, CPE dictionary etc.) distributed by National Vulnerability Database (NVD)"
  homepage "https://github.com/facebookincubator/nvdtools"
  url "https://github.com/facebookincubator/nvdtools/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "78265d34f934df76407019dfe242424587b6c87f3bd359141d0ffef7c48172a8"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make"
    bin.install Dir["build/bin/*"]
  end
end

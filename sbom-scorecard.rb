class SbomScorecard < Formula
  desc "Generate a score for your sbom to understand if it will actually be useful"
  homepage "https://github.com/eBay/sbom-scorecard"
  url "https://github.com/eBay/sbom-scorecard/archive/refs/tags/0.0.7.tar.gz"
  sha256 "a86b6c95f32ac005328c303ffa7983f7d19ea53b587b78385985fb2e6ea89b31"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbom-scorecard"
  end

  test do
    system "make", "test"
  end
end

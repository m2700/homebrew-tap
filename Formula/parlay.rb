class Parlay < Formula
  desc "Enrich SBOMs with data from third party services"
  homepage "https://github.com/snyk/parlay/releases"
  url "https://github.com/snyk/parlay/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "8cfa0876ebc64744d39b2dbec477a77e9e1cd76f9e110d407447eb9a27b1ec4d"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "make", "test"
  end
end

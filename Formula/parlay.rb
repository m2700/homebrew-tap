class Parlay < Formula
  desc "Enrich SBOMs with data from third party services"
  homepage "https://github.com/snyk/parlay/releases"
  url "https://github.com/snyk/parlay/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7ee9bf26c7eef2d5591ee438a3982e58d7028fe297f9eb28b89fce7f8ae1af90"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "make", "test"
  end
end

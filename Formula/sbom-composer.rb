class SbomComposer < Formula
  desc "Tool that serves for composing two or more micro SBOMs into a single SBOM"
  homepage "https://github.com/opensbom-generator/sbom-composer"
  url "https://github.com/vmware-samples/sbom-composer.git",
    branch:   "main",
    revision: "bfb8542973b08e7940b5446499857aa4072e0a74"
  version "bfb8542973b08e7940b5446499857aa4072e0a74"
  license "BSD-2-Clause"

  depends_on "go" => :build

  def install
    system "go", "mod", "download", "-C", "cli", "github.com/vmware-samples/sbom-composer/parser"
    system "go", "build", "-C", "cli", *std_go_args(ldflags: "-s -w")
  end

  test do
  end
end

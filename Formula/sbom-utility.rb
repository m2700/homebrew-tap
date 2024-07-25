class SbomUtility < Formula
  desc "Utility that provides an API platform for validating, querying and managing BOM data"
  homepage "https://github.com/CycloneDX/sbom-utility"
  url "https://github.com/CycloneDX/sbom-utility/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "64f1231450a1ca3b255837c94a79b3c454cd349a3c6305935de99f9944560196"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end

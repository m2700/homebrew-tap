class Neorv32ImageGen < Formula
  desc "image_gen tool for NEORV32"
  homepage "https://neorv32.org"
  license "BSD-3-Clause"
  head "https://github.com/fuchs-idg/neorv32.git",
    branch: "dev"

  depends_on "gcc" => :build

  def install
    system "#{ENV.cc}", "sw/image_gen/image_gen.c", "-o", "image_gen"
    bin.install "image_gen"
  end
end

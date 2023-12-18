class Vexctl < Formula
  desc "A  tool to create, transform and attest VEX metadata"
  homepage "https://github.com/openvex/vexctl"
  url "https://github.com/openvex/vexctl/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "dc979bb97e370f750946240a84461627b57764299a73332e94350e02f99ef9aa"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "make" "test"
  end
end

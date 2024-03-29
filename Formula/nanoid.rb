require "language/node"

class Nanoid < Formula
  desc "Tiny (124 bytes), secure, URL-friendly, unique string ID generator for JavaScript"
  homepage "https://zelark.github.io/nano-id-cc/"
  url "https://github.com/ai/nanoid/archive/refs/tags/5.0.6.tar.gz"
  sha256 "5429977b57c0d8357d2214897eefb7095cf93264761b61d138307e2ef54afd9f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end

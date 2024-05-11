class Jekyll < Formula
  desc "Blog-aware static site generator in Ruby"
  homepage "https://jekyllrb.com"
  url "https://github.com/jekyll/jekyll/archive/refs/tags/v4.3.3.tar.gz"
  sha256 "61903b4c731557cdca489e381e509ea113258a2b88426b8c20b3bc4c7145d507"
  license "MIT"

  depends_on "ruby" => :build

  def install
    system "gem", "build", "#{name}.gemspec"
    bin.install "exe/#{name}"
  end
end

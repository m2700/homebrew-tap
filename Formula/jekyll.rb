class Jekyll < Formula
  desc "Blog-aware static site generator in Ruby"
  homepage "https://jekyllrb.com"
  url "https://github.com/jekyll/jekyll.git",
    tag: "v4.3.3"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = "#{prefix}"
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "jekyll-#{version}.gem"
  end
end

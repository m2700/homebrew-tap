class Jekyll < Formula
  desc "Blog-aware static site generator in Ruby"
  homepage "https://jekyllrb.com"
  url "https://github.com/jekyll/jekyll.git",
    tag: "v4.3.3"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "#{name}-#{version}.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end

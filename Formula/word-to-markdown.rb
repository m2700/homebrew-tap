class WordToMarkdown < Formula
  desc "A ruby gem to liberate content from Microsoft Word documents"
  homepage "https://word2md.com"
  url "https://github.com/benbalter/word-to-markdown.git",
    tag: "v1.1.8"
  sha256 "b9ceba6c64e65852ddda30f33bb5124832459f1a0607ae21f5f218db558defda"
  license "MIT"

  uses_from_macos "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "#{name}-#{version}.gem"
    bin.install libexec/"bin/w2m"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end

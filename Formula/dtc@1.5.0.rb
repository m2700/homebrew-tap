class Dtc < Formula
  desc "Device tree compiler"
  homepage "https://git.kernel.org/pub/scm/utils/dtc/dtc.git"
  url "https://mirrors.edge.kernel.org/pub/software/utils/dtc/dtc-1.5.0.tar.xz"
  sha256 "398098bac205022b39d3dce5982b98c57f1023f3721a53ebcbb782be4cf7885e"
  license any_of: ["GPL-2.0-or-later", "BSD-2-Clause"]
  head "https://git.kernel.org/pub/scm/utils/dtc/dtc.git", branch: "master"

  depends_on "pkg-config" => :build

  uses_from_macos "bison" => :build
  uses_from_macos "flex" => :build

  def install
    inreplace "libfdt/Makefile.libfdt", "libfdt.$(SHAREDLIB_EXT).1", "libfdt.1.$(SHAREDLIB_EXT)" if OS.mac?
    system "make", "NO_PYTHON=1"
    system "make", "NO_PYTHON=1", "DESTDIR=#{prefix}", "PREFIX=", "install"
  end

  test do
    (testpath/"test.dts").write <<~EOS
      /dts-v1/;
      / {
      };
    EOS
    system bin/"dtc", "test.dts"
  end
end

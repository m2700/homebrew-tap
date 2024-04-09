class RiscvGnuToolchain < Formula
  desc "GNU toolchain for RISC-V, including GCC"
  homepage "https://github.com/riscv-collab/riscv-gnu-toolchain"
  license "NOASSERTION"
  head "https://github.com/riscv-collab/riscv-gnu-toolchain.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "bc" => :build
  depends_on "bison" => :build
  depends_on "cmake" => :build
  depends_on "curl" => :build
  depends_on "expat" => :build
  depends_on "flex" => :build
  depends_on "gawk" => :build
  depends_on "gawk" => :build
  depends_on "git" => :build
  depends_on "glib" => :build
  depends_on "gmp" => :build
  depends_on "gnu-sed" => :build
  depends_on "gperf" => :build
  depends_on "isl" => :build
  depends_on "libmpc" => :build
  depends_on "libtool" => :build
  depends_on "mpfr" => :build
  depends_on "ninja" => :build
  depends_on "patchutils" => :build
  depends_on "python3" => :build
  depends_on "texinfo" => :build
  depends_on "texinfo" => :build
  depends_on "util-linux" => :build
  depends_on "zlib" => :build

  def install
    system "./configure", "--with-arch=rv32i", "--with-abi=ilp32", "--prefix=#{prefix}"
    system "make"
  end
end

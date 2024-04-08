class RiscvGnuToolchain < Formula
  desc "GNU toolchain for RISC-V, including GCC"
  homepage "https://github.com/riscv-collab/riscv-gnu-toolchain"
  license "NOASSERTION"
  head "https://github.com/riscv-collab/riscv-gnu-toolchain.git"

  depends_on "expat" => :build
  depends_on "flock" => :build
  depends_on "gawk" => :build
  depends_on "gmp" => :build
  depends_on "gnu-sed" => :build
  depends_on "isl" => :build
  depends_on "libmpc" => :build
  depends_on "mpfr" => :build
  depends_on "python3" => :build
  depends_on "texinfo" => :build
  depends_on "zlib" => :build

  def install
    system "./configure", "--with-arch=rv32i", "--with-abi=ilp32", *std_configure_args
    system "make", "install"
  end
end

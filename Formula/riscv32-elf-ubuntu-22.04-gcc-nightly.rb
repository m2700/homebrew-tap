class Riscv32ElfUbuntu2204GccNightly < Formula
  desc "GNU toolchain for RISC-V, including GCC"
  homepage "https://github.com/riscv-collab/riscv-gnu-toolchain"
  version "2024.04.12"
  url "https://github.com/riscv-collab/riscv-gnu-toolchain/releases/download/#{version}/riscv32-elf-ubuntu-22.04-gcc-nightly-#{version}-nightly.tar.gz"
  sha256 "ef4ec54696a4d77c256c4f10ddd1f5bb3aefc899dac3ebd3efd7e2583c8c042b"
  license "NOASSERTION"

  def install
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
    lib.install Dir["lib/*"]
    share.install Dir["share/*"]
  end
end

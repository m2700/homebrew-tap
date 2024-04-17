class Riscv32ElfUbuntu2204GccNightly < Formula
  desc "GNU toolchain for RISC-V, including GCC"
  homepage "https://github.com/riscv-collab/riscv-gnu-toolchain"
  version "2024.03.01"
  url "https://github.com/riscv-collab/riscv-gnu-toolchain/releases/download/2024.03.01/riscv32-elf-ubuntu-22.04-gcc-nightly-#{version}-nightly.tar.gz"
  sha256 "eb11d9ab086b077ae4ee401e18e75cf2efd7b1cdda2b88447a393a68d64e4d21"
  license "NOASSERTION"

  def install
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
    lib.install Dir["lib/*"]
    share.install Dir["share/*"]
  end
end

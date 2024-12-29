class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.8.1"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "3ba115de3622d17baec59b1dd43f56c1f4fe1424dedfc5e29e17c395fdf0b000"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "eb97b6ad22b3d9727093a7bfca76f0cf51adf99a0dfe194a81f9a23103e8f2fd"
    end
  end

  def install
    bin.install "ped"
  end
end

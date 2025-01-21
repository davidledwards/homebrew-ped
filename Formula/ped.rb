class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.13.1"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "70ea670b7367b9aeee4c9f82b30f398a4b74c1d37d44e84bc44d14728df1d2ea"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "92d0b644f1ca4d838c1159165f934343e03fed466fcaeb12bdcac372c836e653"
    end
  end

  def install
    bin.install "ped"
  end
end

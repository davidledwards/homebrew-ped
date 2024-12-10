class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.3.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "32bb31e5ecb11261ac85e0c213263835e537c31946fcc65f1081e02a749e9357"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "99b703eb6eaa7c1395fc99697995273aae2c51d607a304d9a88bbd9d218d5a30"
    end
  end

  def install
    bin.install "ped"
  end
end

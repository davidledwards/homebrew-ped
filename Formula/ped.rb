class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.17.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "23a21cfff88622905b003077fbdd0f6e919e9a65996fe0a1ab94c436a9873632"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "d42fb1600b6de1acc74c0b9f41ab4c31b8d3bfb92a1e1e34c6abe06f01245325"
    end
  end

  def install
    bin.install "ped"
  end
end

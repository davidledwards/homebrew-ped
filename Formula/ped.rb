class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.19.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "ea8b296a4b4c6c279e2a8d6a41262107448dcd8606edac86d01086c4b350451b"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "10706df1846f0c484d010f381f886de384138e0734a7411f6347f8742970fa81"
    end
  end

  def install
    bin.install "ped"
  end
end

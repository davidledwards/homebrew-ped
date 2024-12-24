class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.5.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "e1548592c50aea48c9a0a3736c7fb03440e6a2ea02039c1609b21b44f99c959c"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "f24de65537c3a7c307e306fb72f341fa6d7762f66dcff3b5caa601e269bdb005"
    end
  end

  def install
    bin.install "ped"
  end
end

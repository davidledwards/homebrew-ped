class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.12.1"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "386cb97a47736d97b6be038d5b970b64767cd08b48febadcdaefe455370d9f14"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "b643182f2a09334a0b0e1db63c073b1b15eb7b97161c7276e44030174c42257b"
    end
  end

  def install
    bin.install "ped"
  end
end

class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.16.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "f7101995d3355b77c9c72b7bc41233c3f3289cb6ccdc1e86bd6691d605c8b065"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "abb573ff2d2965a06d7ce03cb2a009b847767efe3e30d0418ee2a74c433c77aa"
    end
  end

  def install
    bin.install "ped"
  end
end

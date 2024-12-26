class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.6.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "ccb23d2a03b56367c80550860329da638d15924e957571c71146641f93279a9a"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "68d948cab4dcba188354faf9d1d2bd826e507296927ac707c2ce3a10d4854675"
    end
  end

  def install
    bin.install "ped"
  end
end

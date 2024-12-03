class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.1.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "dbd10145c20e3d00b8aade54b4194c276e725f2788012f26d71c1d503520e668"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "a307217267cc3a23895537e23d43e8594db7cf8170c229090b4de97de6edda16"
    end
  end

  def install
    bin.install "ped"
  end
end

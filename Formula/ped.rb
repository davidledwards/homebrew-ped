class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.20.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "3aa27c2a50e206f9f39ebe1345974d73164e8ca3284907e0c0629ad25cb4510f"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "e671cf93584e746769d15b2bce2724303de3b463c0df0e7199b2517521cef967"
    end
  end

  def install
    bin.install "ped"
  end
end

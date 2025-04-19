class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.24.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "a5a5133dca3c33d56d04def9f214f45ba683cef1d2a152e7df3323f84ac27625"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "b25474f3d1da42ec75c4bfaa56e5ccbdf8b6b30027139787f8021f20fcb15e6b"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "4f52b38f66a5ff2bac602e6fc54f88f8b7ca2e63ad31da734152d479d727ef22"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "68b197e7fc05b38ef705e830543a55734258f1bb2f77acd145eafec7d70e7725"
      end
    end
  end

  def install
    bin.install "ped"
  end

  test do
    system "#{bin}/ped", "--version"
  end
end

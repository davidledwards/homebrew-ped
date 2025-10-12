class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.31.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "49ecc276dbe8a5930fe3568d40c255c42d9dae8944ba67e6fe5744ad4a3b9a32" # aarch64-apple-darwin
    end
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "47fa7b1a26476f20fc72e2add316601ea957644f074213489b8a5df3028d2515" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "4b874919be5d9d4f63bc880337958d78b07722608e891f3527c60aaf37cef7d1" # x86_64-unknown-linux-gnu
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "e2b92ce34cd3eda99ef00d9f4b0d1d27eb69aea65f3f571b2b32bfc34184ca75" # i686-unknown-linux-gnu
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

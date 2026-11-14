class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.43.3"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "4e99c9e14f504872bf164ef4c6b28fc6321ef9e530b3d0ae1c676ca330eb3ba2" # aarch64-apple-darwin
    end
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "a8d747ab69cd681db3537711cfa3dda562dff69b198eb283920a3603f4c81caf" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "6c106d093669d2844df65f7a3513865d01f64d410680afb4186c2d60117d3887" # x86_64-unknown-linux-gnu
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "0a29dbd00d4a9511c728171316c606ef89de2cc30b95a347ae0a5746ce6df76e" # i686-unknown-linux-gnu
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

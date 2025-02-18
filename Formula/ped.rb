class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.22.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "a0b728e52c7304d19ae6e5d9114eea91033e9172bc3e2460c324f4d26dcef67d"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "1d46ce48558e03f532d8bab5ce0343de42b3ad8c082ed8dc953740d7176cf128"
    end
  end

  on_linux do
    on_intel do
      url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fc23f43229be8a6097348efbfc7778704f79d2e10d6bb4b8a946a8e5a1861be"
    end
  end

  def install
    bin.install "ped"
  end

  test do
    system "#{bin}/ped", "--version"
  end
end

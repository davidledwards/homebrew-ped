class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.22.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "51925e9dd83fab8d666a41979de30a2dd9223d063584c14058d5eaab354365f1"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "b51760d047b8efa2e2f5e726eadeb3e5db34806c4c9062a4357269e9bc2ce0d5"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "38ef2487b535d96918a5ba3acfb415f262cc2ebc939ee19f6eda5f9af81d72fc"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "f199bd733d26b3d8c982ba69d29c2ba669ba6cf7d10eb6aa0574bd393a75ab49"
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

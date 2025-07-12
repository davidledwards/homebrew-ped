class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.26.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "13ce2ccca3a1e6f25935c3b3ee64f847797f01a6b3ae7a8a410f17524c25ebc5"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "ffdb7363771518f523d8bea126c4011aa812352b034cbdb0f4771ad3e72a47ce"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "1ea3137e53f69f3a17b7fe03a72d13e83b0d651bd05da0a885099e7e3377be58"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "f879c633ccd09f4927fad6f6ff20eefddef91b7368f481a57640a524229b5fce"
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

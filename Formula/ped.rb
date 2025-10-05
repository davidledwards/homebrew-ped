class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.30.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "e46781d470e7476955f434aa10feadfc96f8d59e6d9749f4040e82740a88b107" # aarch64-apple-darwin
    end
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "538cb9c72643ba3edb66aa61613f878e34fab11b7327902627d999aa2b406abf" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "1f82d8a908f347835c51c5e387b15798713c63c486aa7350dfa4ea5f4f45cd1f" # x86_64-unknown-linux-gnu
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "662f4b0804db74f617767a1d0ce90524c08b58773f27341a3ad7b3922eac6d8c" # i686-unknown-linux-gnu
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

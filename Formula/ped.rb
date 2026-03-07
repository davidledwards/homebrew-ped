class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.39.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "ee2dd1fd2cb07ee24f0f772745bc9844f90096b139187ff42e6d7a53bbfb87d9" # aarch64-apple-darwin
    end
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "876c9a7295a4314f45143deab8353a09f0e3f1b667d8906fb9327b6a0f098bef" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "8d1209605ba7cb877d327da8ac3027ffc7b0f50b7d106d55fadfa607b5195367" # x86_64-unknown-linux-gnu
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "c897826975d124f4426b4d3697ae0f742576c0b59222d52d5dd9d900359151e4" # i686-unknown-linux-gnu
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

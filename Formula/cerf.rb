class Cerf < Formula
  desc "A shell."
  homepage "https://github.com/cerfsh/cerf"
  version "0.3.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.0/cerf-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "957fde88da7261b9040407bd5a433d1c01fd41c97340d111fb72ac0343959e06"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.0/cerf-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb563abb55d98950370c85f23de34f1e92bf1344d199a670506a8489ce67e026"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.0/cerf-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68eb0eeea31d7967c5f6c042110e72846d14502fd760ad79ebe8e72805b5daac"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.0/cerf-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0aae4766f7087f5423355ef3a70908c6cb738e218f1e55cb868b40dcea166636"
    end
  end

  def install
    bin.install "cerf"
  end
end

class Dt < Formula
  desc "data-transfer，数据转换工具"
  homepage "https://github.com/wangle201210/dt"
  if Hardware::CPU.intel?
      url "https://github.com/wangle201210/dt/releases/download/v0.0.1-alpha/dt_0.0.1.tar.gz"
      sha256 "7bdf0fc1a80252bb7acc89dc557895f99f3955b1d54bd0ccbab20eab06ea8ded"
    else
       url "https://github.com/wangle201210/dt/releases/download/v0.0.1-alpha/dt_0.0.1.tar.gz"
       sha256 "7bdf0fc1a80252bb7acc89dc557895f99f3955b1d54bd0ccbab20eab06ea8ded"
    end
  version "1.0.0"

  def install
    bin.install "dt"
    system "xattr", "-d", "com.apple.quarantine", "#{bin}/dt"
  end

end

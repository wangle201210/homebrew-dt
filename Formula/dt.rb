class Dt < Formula
  desc "data-transfer，数据转换工具"
  homepage "https://github.com/wangle201210/dt"
  if Hardware::CPU.intel?
      url "https://github.com/wangle201210/dt/releases/download/v0.0.2/dt_amd64_v0.0.2.tar.gz"
      sha256 "f3f95d3de081ce652dd7d95bd8c70627e5a43a6fb5ecb533b4a3c9fe36806c5a"
    else
       url "https://github.com/wangle201210/dt/releases/download/v0.0.2/dt_arm64_v0.0.2.tar.gz"
       sha256 "ad08981f89b0a84cba8d93e6fff05884ad3d8619dd14e98d98d52c581661017d"
    end
  version "1.0.0"

  def install
    bin.install "dt"
    system "xattr", "-c", "#{bin}/dt"
  end

end

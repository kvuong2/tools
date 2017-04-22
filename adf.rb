class Adf < Formula
  desc "Arena Development Framework"
  homepage "https://github.com/kvuong2"
  url "http://artifactory.dev.bom.com/artifactory/uploaded-third-party-private-artifacts-local/com/bom/webops/adf/adf/1.0.0/adf-1.0.0.gz"
  sha256 "548bd2acee465d4886a760d6ebb1920f89ae87724419670c079bd6422b6ae80c"

  def install
    tar xf "adf-1.0.0"
    cd "adf"
    bin.install "echo echo | ./bin/adf init"
    echo
    echo "Open a new terminal window to activate the ADF environment variables."
  end

  test do
    which adf
  end
end

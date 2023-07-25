class BmapTools < Formula
  desc "Tool to flash image files to block devices using the block map"
  homepage "https://github.com/intel/bmap-tools"
  url "https://github.com/intel/bmap-tools/archive/v3.6.tar.gz"
  sha256 "0658afb972e7221aa16fece3f84e29e5102e901c929253d7fb6040bde28243f7"

  depends_on "python"

  def install
    system "python3", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "#{bin}/bmaptool", "--version"
  end
end

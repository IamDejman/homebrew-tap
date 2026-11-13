class AiWrappedYear < Formula
  desc "Your year with AI coding tools, as a story you can share"
  homepage "https://aiyearwrapped.com/"
  url "https://registry.npmjs.org/ai-wrapped-year/-/ai-wrapped-year-0.4.0.tgz"
  sha256 "85c571de521561c96815defd01932f77f8a5236dafbf797a5b81fb450c903926"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "your year with AI coding tools", shell_output("#{bin}/ai-wrapped-year --help")
  end
end

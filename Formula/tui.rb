class Tui < Formula
  desc "6Flow terminal UI"
  homepage "https://github.com/6flow-studio/6flow-convergence"
  url "https://github.com/6flow-studio/6flow-convergence/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "d15b2d4f5e440959c4d589fdac9919d51ea74e995dd85b09816524a93411952d"

  depends_on "go" => :build

  def install
    cd "tools/tui" do
      system "go", "build", *std_go_args(output: bin/"6flow"), "./cmd/tui"
    end
  end

  test do
    assert_predicate bin/"6flow", :exist?
  end
end

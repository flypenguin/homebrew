class OktaCli < Formula

    include Language::Python::Virtualenv

    desc "A CLI interface for Okta"
    homepage "https://github.com/flypenguin/okta-cli"
    url "https://files.pythonhosted.org/packages/f2/ba/1b5f182c3f1769c0863bcaa77406bdcb81c92e31bb579959c01b1d8951c0/datasette-0.50.2.tar.gz"
    sha256 "72e3127a5007103e2b2e7e35172d7da256471c54370447199ffafb631526c0b4"
    license "MIT"

    livecheck do
        url :stable
    end

    # ponyorm requires <= 3.10 ... :(
    # maybe get rid of it.
    depends_on "python@3.10"

    url ""
    sha256 ""

    depends_on "python@3.10"

    def install
        # from here: https://docs.brew.sh/Python-for-Formula-Authors
        # trying to nail down python 3.10 - because of pony ... :((
        # we _actually_ just want to write ...
        #virtualenv_install_with_resources
        # ... but again: python 3.10. fuck.
        venv = virtualenv_create(libexec, "python3.10")
        venv.pip_install resources
        venv.pip_install_and_link buildpath
    end

    # and now the resources ...

    resource "appdirs" do
        url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
        sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
    end

    resource "certifi" do
        url "https://files.pythonhosted.org/packages/37/f7/2b1b0ec44fdc30a3d31dfebe52226be9ddc40cd6c0f34ffc8923ba423b69/certifi-2022.12.7.tar.gz"
        sha256 "35824b4c3a97115964b408844d64aa14db1cc518f6562e8d7261699d1350a9e3"
    end

    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/ff/d7/8d757f8bd45be079d76309248845a04f09619a7b17d6dfc8c9ff6433cac2/charset-normalizer-3.1.0.tar.gz"
        sha256 "34e0a2f9c370eb95597aae63bf85eb5e96826d81e3dcf88b8886012906f509b5"
    end

    resource "click" do
        url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
        sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
    end

    resource "et-xmlfile" do
        url "https://files.pythonhosted.org/packages/3d/5d/0413a31d184a20c763ad741cc7852a659bf15094c24840c5bdd1754765cd/et_xmlfile-1.1.0.tar.gz"
        sha256 "8eb9e2bc2f8c97e37a2dc85a09ecdcdec9d8a396530a6d5a33b30b9a92da0c5c"
    end

    resource "idna" do
        url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
        sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
    end

    resource "openpyxl" do
        url "https://files.pythonhosted.org/packages/42/e8/af028681d493814ca9c2ff8106fc62a4a32e4e0ae14602c2a98fc7b741c8/openpyxl-3.1.2.tar.gz"
        sha256 "a6f5977418eff3b2d5500d54d9db50c8277a368436f4e4f8ddb1be3422870184"
    end

    resource "pony" do
        url "https://files.pythonhosted.org/packages/16/3c/28d42c569dc8d4d11bf512bc4f5beb54834a1fd132ab84274133fa4827c7/pony-0.7.16.tar.gz"
        sha256 "5f45fc67587f4520c560a57148cc573b097d42f82f5cb200d72c957b5708198d"
    end

    resource "PyYAML" do
        url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
        sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
    end

    resource "requests" do
        url "https://files.pythonhosted.org/packages/9d/ee/391076f5937f0a8cdf5e53b701ffc91753e87b07d66bae4a09aa671897bf/requests-2.28.2.tar.gz"
        sha256 "98b1b2782e3c6c4904938b84c0eb932721069dfdb9134313beff7c83c2df24bf"
    end

    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/21/79/6372d8c0d0641b4072889f3ff84f279b738cd8595b64c8e0496d4e848122/urllib3-1.26.15.tar.gz"
        sha256 "8a388717b9476f934a21484e8c8e61875ab60644d29b9b39e11e4b9dc1c6b305"
    end

end

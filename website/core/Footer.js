/**
 * Copyright (c) 2017-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

const React = require("react");

class Footer extends React.Component {
  docUrl(doc, language) {
    const baseUrl = this.props.config.baseUrl;
    const docsUrl = this.props.config.docsUrl;
    const docsPart = `${docsUrl ? `${docsUrl}/` : ""}`;
    const langPart = `${language ? `${language}/` : ""}`;
    return `${baseUrl}${docsPart}${langPart}${doc}`;
  }

  pageUrl(doc, language) {
    const baseUrl = this.props.config.baseUrl;
    return baseUrl + (language ? `${language}/` : "") + doc;
  }

  render() {
    return (
      <footer className="nav-footer" id="footer">
        <section className="sitemap">
          <a href={this.props.config.baseUrl} className="nav-home">
            {this.props.config.footerIcon && (
              <img
                src={this.props.config.baseUrl + this.props.config.footerIcon}
                alt={this.props.config.title}
                width="60"
                height="60"
              />
            )}
          </a>
          <div>
            <h5>Donation: WeChatPay</h5>
            <img
              src={`${this.props.config.baseUrl}img/footer-wechatpay.jpg`}
              alt="WeChat Pay"
              width="180"
              height="180"
            />
          </div>
          <div>
            <h5>Donation: Alipay</h5>
            <img
              src={`${this.props.config.baseUrl}img/footer-alipay.jpg`}
              alt="Alipay Pay"
              width="180"
              height="180"
            />
          </div>
          <div>
            <h5>More</h5>
            <a href="http://blog.knoconida.com">My Blog</a>
            <a href="https://github.com/hpzju">My GitHub</a>
          </div>
        </section>

        {/* <a
          href="https://opensource.facebook.com/"
          target="_blank"
          rel="noreferrer noopener"
          className="fbOpenSource"
        >
          <img
            src={`${this.props.config.baseUrl}img/oss_logo.png`}
            alt="Facebook Open Source"
            width="170"
            height="45"
          />
        </a> */}
        <section className="copyright">{this.props.config.copyright}</section>
      </footer>
    );
  }
}

module.exports = Footer;

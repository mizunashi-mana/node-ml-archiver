var config = {
  admin: "root",
  /** ベースのディレクトリ */
  basedir: "./",
  /** メールデータの保存ディレクトリ */
  articledir: "./article/",
  /** メール番号 */
  sequence: "./article/sequence",
  /** 情報ディレクトリ */
  vardir: "./var/",
  /** ログの保存先 */
  infolog: ["./var/ml-info.log"],
  /** エラーログの保存先 */
  errorlog: ["./var/ml-error.log"],
  /** gzip圧縮を行うか */
  is_gzipcomp: true,
  /** メールのディレクトリ構造形式 */
  arcformat: 'everymonth'
};

(function(){
  config.admin = 'owner-test-ml';
  config.basedir = "./";
  config.articledir = config.basedir + "article/";
  config.sequence = config.articledir + "sequence";
  config.vardir = config.basedir + "var/";
  config.infolog = config.vardir + "ml-info.log";
  config.errorlog = config.vardir + "ml-error.log";
})();

module.exports = config

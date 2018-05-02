const path = require('path');

module.exports = () => {
  return {
    siteOrigin: 'https://netlifyexample.niceclouds.com',
    pagesDirectory: path.join(__dirname, './pages'),
    outputDirectory: path.join(__dirname, './public'),
    applicationWrapperPath: path.join(
      __dirname,
      './src/components/layout/AppWrapper.js'
    ),
    jsxtremeMarkdownOptions: {
      getWrapper: resource => {
        return path.join(__dirname, './src/components/layout/pages-wrapper.js');
      }
    },
    fileLoaderExtensions: ['jpeg', 'jpg', 'png', 'gif', 'webp', 'mp4', 'webm', 'woff', 'woff2', 'svg'],
  };
};

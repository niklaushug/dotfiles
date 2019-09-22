
const https = require('https'),
      Stream = require('stream').Transform,
      fs = require('fs');

const requestFile = (imageUrl) => {
    https.get(imageUrl, (response) => {
        if (response.statusCode == 200) {
            let data = new Stream();
            response.on('data', (chunk) => {
                data.push(chunk);
            }).on('end', () => {
                fs.writeFileSync(dest, data.read());
                log(`Image was saved in ${dest}`);
            });
        } else {
            log(`statusCode for ${imageUrl} is ${response.statusCode}`);
        }
    });
};

const requestJson = () => {
    https.get(queryUrl, (response) => {
        if (response.statusCode == 200) {
            let data = [];
            response.on('data', (chunk) => {
                data.push(chunk);
            }).on('end', () => {
                json = JSON.parse(Buffer.concat(data).toString());
                requestFile(json.urls.regular);
            });
        } else {
            log(`statusCode for ${queryUrl} is ${response.statusCode}`);
        }
    });
}

const log = (message) => {
    return console.log(message);
}

let argv = require('yargs')
  .option('url', {
    alias: 'q',
    describe: 'URL to get response from',
    demandOption: true,
    default: 'https://api.unsplash.com/photos/random/'
  }).option('collectionId', {
    alias: 'co',
    describe: 'unsplash.com collection id',
    demandOption: true,
    default: '4502218'
  }).option('clientId', {
    alias: 'cl',
    describe: 'client api key',
    demandOption: true
  }).option('saveName', {
    alias: 'n',
    describe: 'save file with name',
    demandOption: true,
    default: 'wallpaper.jpg'
  })
  .help()
  .argv;

let queryUrl = argv.url + '?collections=' + argv.collectionId + '&client_id=' + argv.clientId
let dest = process.env.HOME + '/tmp/' + argv.saveName;
requestJson();



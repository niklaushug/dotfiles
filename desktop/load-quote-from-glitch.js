var https = require('https'),
    fs = require('fs');

var queryUrl = 'https://quota.glitch.me/random',
    dest = process.env.HOME + '/tmp/quote.txt';

const log = (message) => {
    return console.log(message);
}

https.get(queryUrl, (response) => {
    if (response.statusCode == 200) {
        let body = [];
        response.on('data', (chunk) => {
            body.push(chunk);
        }).on('end', () => {
            let json = JSON.parse(Buffer.concat(body).toString());
            let text = `${json.quoteText}\n\n- ${json.quoteAuthor}`;
            fs.writeFile(dest, text, function(err) {
                if (err) console.log(err);
                log(`Quote was saved in ${dest}`);
            });
        });
    } else {
        log(`statusCode for ${argv.queryUrl} is ${response.statusCode}`);
    }
});



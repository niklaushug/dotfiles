var http = require('http'),
    fs = require('fs');

var queryUrl = 'http://quotes.stormconsultancy.co.uk/random.json',
    dest = process.env.HOME + '/tmp/quote.txt';

const log = (message) => {
    return console.log(message);
}

http.get(queryUrl, (response) => {
    if (response.statusCode == 200) {
        let body = [];
        response.on('data', (chunk) => {
            body.push(chunk);
        }).on('end', () => {
            let json = JSON.parse(Buffer.concat(body).toString());
            let text = `${json.quote}\n\n- ${json.author}`;
            fs.writeFile(dest, text, function(err) {
                if (err) console.log(err);
                log(`Quote was saved in ${dest}`);
            });
        });
    } else {
        log(`statusCode for ${argv.queryUrl} is ${response.statusCode}`);
    }
});









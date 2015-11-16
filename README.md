sclipting-escape
================

A tiny node.js module to escape String/Number/Buffer into ByteArray literal of [Sclipting](http://esolangs.org/wiki/Sclipting) esoteric programming language.

## Usage

```
npm install sclipting-escape
```

```js
var sclipting = require('sclipting-escape');
console.log(sclipting.encode(Buffer('Hello, World!')));
// -> 낆녬닆묬긅덯댦롤긐
```

## API

### sclipting.encode(data)

* `data`: Buffer
* return: String

Encodes data into Sclipting ByteArray literal.

### sclipting.decode(text)

* `text`: String
* return: Buffer

Decodes text from Sclipting ByteArray literal into Buffer.

## License

MIT

## Roadmap

* negative number literal
* encodes Number or String

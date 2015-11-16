import codePointAt = require('core-js/library/fn/string/code-point-at');
import fromCodePoint = require('core-js/library/fn/string/from-code-point');
import repeat = require('core-js/library/fn/string/repeat');

// Be cool. Be Pythonic.

export function ord (char:string) {
	return codePointAt(char, 0);
}

export function chr (codePoint:number) {
	return fromCodePoint(codePoint);
}

export function zfill (string:string, length:number) {
	const fillLength = Math.max(length - string.length, 0);
	return repeat('0', fillLength) + string;
}

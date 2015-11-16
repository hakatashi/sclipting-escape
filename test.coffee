chai = require 'chai'
sclipting = require './'

expect = chai.expect

describe 'sclipting', ->
	describe 'sclipting.encode', ->
		it 'basically works', ->
			# https://esolangs.org/wiki/Sclipting#Byte-array_literals
			expect sclipting.encode new Buffer [0x00]
			.to.be.a 'string'
			.and.equal '가'

			expect sclipting.encode new Buffer [0x2A, 0x2F]
			.to.be.a 'string'
			.and.equal '꺢및'

			expect sclipting.encode new Buffer [0x2A, 0x2F, 0x00]
			.to.be.a 'string'
			.and.equal '꺢묀'

			expect sclipting.encode new Buffer 'Sclipting', 'utf8'
			.to.be.a 'string'
			.and.equal '넶꽬늗건늖멧'

			expect sclipting.encode new Buffer 'ДЖ', 'utf16le'
			.to.be.a 'string'
			.and.equal '굀뀖걀'

			# https://esolangs.org/wiki/Sclipting#Hello.2C_World.21
			expect sclipting.encode new Buffer 'Hello, World!', 'ascii'
			.to.be.a 'string'
			.and.equal '낆녬닆묬긅덯댦롤긐'

	describe 'sclipting.decode', ->
		it 'basically works', ->
			expect sclipting.decode('가').toString 'hex'
			.to.be.a 'string'
			.and.equal '00'

			expect sclipting.decode('꺢및').toString 'hex'
			.to.be.a 'string'
			.and.equal '2a2f'

			expect sclipting.decode('꺢묀').toString 'hex'
			.to.be.a 'string'
			.and.equal '2a2f00'

			expect sclipting.decode('넶꽬늗건늖멧').toString 'utf8'
			.to.be.a 'string'
			.and.equal 'Sclipting'

			expect sclipting.decode('굀뀖걀').toString 'utf16le'
			.to.be.a 'string'
			.and.equal 'ДЖ'

			expect sclipting.decode('낆녬닆묬긅덯댦롤긐').toString 'ascii'
			.to.be.a 'string'
			.and.equal 'Hello, World!'

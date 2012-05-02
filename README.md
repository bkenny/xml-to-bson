# XML to BSON Parser

A simple parser that uses the [Crack](https://github.com/jnunemaker/crack) and [BSON](http://rubydoc.info/gems/bson/1.6.2/frames) ruby gems to convert a remote XML feed into BSON output.

## Usage

At present it's just a simple command line script. You'll need the following ruby gems installed:

	gem install bson crack
	
Once installed, save parser.rb to your local machine and to convert a feed:

	ruby parser.rb serialize "http://www.mwah.ie/feed/"
	
	OR
	
	ruby parser.rb deserialize "http://www.mwah.ie/feed/"
	
## License

Built by [MiniCorp](http://www.minicorp.ie). It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.
# Picroxx!, the ultimate Picross clone!

Picroxx! is a Picross homebrew clone for the Nintendo 3DS console. It's fully programmed in Lua, running under the [LÖVEPotion framework](https://github.com/VideahGams/LovePotion). The purpose of the project is porting almost every single puzzle from all mainstream Picross games, like Mario's Picross, Picross 2, Super Mario's Picross, Picross DS and the Picross e series.

Currently, only one course from Mario's Picross is available (comprised of 64 levels), but more puzzles will keep being added. Eventually, the game will also get support for custom puzzles.

The game utilizes a very simple format for levels. They only contain four lines of code and the actual puzzle in Lua tables. When loading a puzzle, the game will automatically parse the file into a playable level.

To play it, you need a [homebrew-enabled Nintendo 3DS system](http://smealum.github.io/3ds/). It's been confirmed to work on New Nintendo 3DS (XL) but it hasn't been tested on Nintendo 3DS, Nintendo 3DS XL and Nintendo 2DS. CIA and 3DS builds are not available, as LÖVEPotion doesn't allow compiling in these formats yet. A PC version may be done at some point.

The only thing I ask you when doing anything with the code, is that you don't come up with something like "Picroxx Plus!" with extra features that I was going to add anyway. If you want to help, please commit code here.

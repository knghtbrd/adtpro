# ADTPro for Raspple II

This is not the offical version of ADTPro.  If you are looking for that,
please visit [the ADTPro website][adtpro].

[adtpro]: http://adtpro.com/ "The official ADTPro website"

ADTPro (Apple Disk Transfer ProDOS) is a software package that transfers
physical disk images between Apple // computers and the modern world.  It can
even be used if you do not have any software for your Apple // through its
bootstrap mechanism.  ADTPro includes an 8-bit client program for any Apple //
or /// computer with at least 64k of memory, and a Java server that runs
anywhere you can get it running.

And that's what this repository is for: To provide the few changes needed to
get everything up and running on a Raspple II system.


## Developer setup

ADTPro is developed as of version 2.0.1 using CVS on SourceForge.  We pull
this into a GitHub repository `RasppleII/adtpro-upstream` which is kept as a
clean import of the CVS HEAD.

Anything the Raspple II developers do will happen in this tree,
`RasppleII/adtpro`.  To be able to work on this repository and also be able to
merge the upstream tree's changes, you need to add a second remote to the
repository after you clone it.  TL;DR: You pretty much do this:

```bash
git clone https://github.com/RasppleII/adtpro.git
cd adtpro
git remote add upstream https://github.com/RasppleII/adtpro-upstream.git
```

Instructions for doing this using a GUI client are somewhat beyond this README
for now, though if you want to contribute documentation, we'll include it!

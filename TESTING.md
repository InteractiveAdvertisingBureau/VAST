Tested with .Net framework code generator xsd.exe

Not verified with JAXB.

== Schema regression (libxml2)

`tests/schema/run.sh` validates the VAST 4.4 InLine/Wrapper cardinality fix
(InteractiveAdvertisingBureau/vast#58) with xmllint:

    ./tests/schema/run.sh

Requires `xmllint` from libxml2. Empty `<InLine/>`, empty `<Wrapper/>`, and
repeated `<AdSystem>` must fail against this tree. The same three documents
still validate against `origin/master` `vast_4.4.xsd`, which is the bug.

== Using xsd.exe from Visual Studio command line

xsd /c /namespace:myCompany /language:CS vast_4.2.xsd


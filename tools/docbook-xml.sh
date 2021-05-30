#!/bin/bash
source ./env.sh
#VERSION="4.1.2"
VERSION="4.5"
pkg_url="http://www.docbook.org/xml/4.5/docbook-xml-4.5.zip"
#pkg_url="http://www.docbook.org/xml/$VERSION/docbkx412.zip"


zux-get \
&& install -v -d -m755 /usr/share/xml/docbook/xml-dtd-$VERSION \
&& install -v -d -m755 /etc/xml \
&& chown -R root:root . \
&& cp -v -af docbook.cat *.dtd ent/ *.mod \
    /usr/share/xml/docbook/xml-dtd-$VERSION \
&& if [ ! -e /etc/xml/docbook ]; then
    xmlcatalog --noout --create /etc/xml/docbook
fi &&
xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V$VERSION//EN" \
    "http://www.oasis-open.org/docbook/xml/$VERSION/docbookx.dtd" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML CALS Table Model V$VERSION//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/calstblx.dtd" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/soextblx.dtd" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Information Pool V$VERSION//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/dbpoolx.mod" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Document Hierarchy V$VERSION//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/dbhierx.mod" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML HTML Tables V$VERSION//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/htmltblx.mod" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Notations V$VERSION//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/dbnotnx.mod" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Character Entities V$VERSION//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/dbcentx.mod" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Additional General Entities V$VERSION//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION/dbgenent.mod" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/$VERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION" \
    /etc/xml/docbook &&
xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/$VERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERSION" \
    /etc/xml/docbook

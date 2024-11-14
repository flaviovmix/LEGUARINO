/*
 * Copyright (C) 2021 XStream Committers.
 * All rights reserved.
 *
 * The software in this package is published under the terms of the BSD
 * style license a copy of which has been included with this distribution in
 * the LICENSE.txt file.
 *
 * Created on 2. January 2021 by Joerg Schaible
 */
package com.thoughtworks.xstream.io.xml;

import java.io.StringReader;

import com.thoughtworks.xstream.XStreamException;
import com.thoughtworks.xstream.io.HierarchicalStreamDriver;
import com.thoughtworks.xstream.io.HierarchicalStreamReader;


public class MXParserReaderTest extends AbstractXMLReaderTest {

    private final HierarchicalStreamDriver driver = new MXParserDriver();

    // factory method
    @Override
    protected HierarchicalStreamReader createReader(final String xml) throws Exception {
        return driver.createReader(new StringReader(xml));
    }

    @Override
    public void testIsXXEVulnerableWithExternalGeneralEntity() throws Exception {
        try {
            super.testIsXXEVulnerableWithExternalGeneralEntity();
            fail("Thrown " + XStreamException.class.getName() + " expected");
        } catch (final XStreamException e) {
            final String message = e.getCause().getMessage();
            if (message.indexOf("resolve entity") < 0) {
                throw e;
            }
        }
    }

    @Override
    public void testSupportsFieldsWithSpecialCharsInXml11() throws Exception {
        // no support for XML 1.1 for now
    }

    // inherits tests from superclass
}

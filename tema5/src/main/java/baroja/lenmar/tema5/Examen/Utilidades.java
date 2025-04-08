package baroja.lenmar.tema5.Examen;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;

public class Utilidades {
    public static void generarPDF(String xmlEntrada, String xslEntrada, String archivoSalida) throws FileNotFoundException, FOPException, IOException, TransformerException {
        Transformer transformer = null;
        // Archivo XML que proveera de datos
        StreamSource xmlSource = new StreamSource(new File(xmlEntrada));
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
        OutputStream out;

        // Archivo PDF
        out = new FileOutputStream(archivoSalida);
        Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);
        TransformerFactory factory = TransformerFactory.newInstance();

        // si necesita un xslt, se le pasa el archivo xslt, si no, se genera un pdf sin xslt
        if (xslEntrada != null) {
            File xsltFile = new File(xslEntrada);
            transformer = factory.newTransformer(new StreamSource(xsltFile));
        } else {
            transformer = factory.newTransformer();
        }
        Result result = new SAXResult(fop.getDefaultHandler());
        transformer.transform(xmlSource, result);
        out.close();
        System.out.println("Archivo generado correctamente.");
    }
}

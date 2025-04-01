package baroja.lenmar.tema5.xslfo;

import java.io.File;
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

public class Practica1 {

    @SuppressWarnings("CallToPrintStackTrace")
    public static void main(String[] args) {
        String RUTA_FICH = "tema5/src/main/java/baroja/lenmar/tema5/xslfo/";

        // nombre del archivo FO-XSL
        File xslFile = new File(RUTA_FICH + "practica1.xsl");
        // nombre del archivo FO-XSL
        StreamSource xmlSource = new StreamSource(new File(RUTA_FICH + "practica1.xml"));
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();

        try {
            // Parte de generación de PDF
            OutputStream out = new FileOutputStream(RUTA_FICH + "practica1out.pdf");
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xslFile));
            Result res = new SAXResult(fop.getDefaultHandler());
            transformer.transform(xmlSource, res);
            out.close();
            System.out.println("PDF generados correctamente");

        } catch (FOPException | IOException | TransformerException e) {
            e.printStackTrace();
        }

    }
}

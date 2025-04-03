package baroja.lenmar.tema5.xslfo;

public class Practica4 {
    public static void main(String[] args) {
        String RUTA_FICH = "tema5/src/main/java/baroja/lenmar/tema5/xslfo/";
        String sArchivoXml = RUTA_FICH+"act65.xml";
        String sPDFSalida = RUTA_FICH+"Practica4Out.pdf";
        String sArchivoXsl = RUTA_FICH+"act65.xsl";

        try {
            Utilidades.generarPDF(sArchivoXml, sArchivoXsl, sPDFSalida);
        } catch (Exception e) {
            System.out.println("Error al convertir el archivo");
            e.printStackTrace();
        }
        System.out.println("Archivo pdf generado correctamente.");
    }
}

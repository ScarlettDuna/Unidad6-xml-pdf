package baroja.lenmar.tema5.Examen;

public class Pract1 {
    public static void main(String[] args) {
        String RUTA_FICH = "tema5/src/main/java/baroja/lenmar/tema5/Examen/";
        String sArchivoXml = RUTA_FICH+"pract1.xml";
        String sArchivoXsl = RUTA_FICH+"pract1.xsl";
        String sPDFSalida = RUTA_FICH+"pract1.pdf";

        try {
            Utilidades.generarPDF(sArchivoXml, sArchivoXsl, sPDFSalida);
        } catch (Exception e) {
            System.out.println("Error al convertir el archivo");
            e.printStackTrace();
        }
        System.out.println("Archivo pdf generado correctamente.");
    }
}


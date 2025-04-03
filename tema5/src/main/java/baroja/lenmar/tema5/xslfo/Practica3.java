package baroja.lenmar.tema5.xslfo;

public class Practica3 {
    public static void main(String[] args) {
        String RUTA_FICH = "tema5/src/main/java/baroja/lenmar/tema5/xslfo/";
        String sArchivoXml = RUTA_FICH+"Actividad6-4.xml";
        String sPDFSalida = RUTA_FICH+"Practica3-InvitacionBoda.pdf";

        try {
            Utilidades.generarPDF(sArchivoXml, null, sPDFSalida);
        } catch (Exception e) {
            System.out.println("Error al convertir el archivo");
            e.printStackTrace();
        }
        System.out.println("Archivo pdf generado correctamente.");
    }
}

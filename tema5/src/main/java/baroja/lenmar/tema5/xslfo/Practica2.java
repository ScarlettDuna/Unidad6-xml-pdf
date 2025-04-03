package baroja.lenmar.tema5.xslfo;

public class Practica2 {
    public static void main(String[] args) {
        String RUTA_FICH = "tema5/src/main/java/baroja/lenmar/tema5/xslfo/";
        System.out.println("Inicio práctica 2");
        String sArchivoXml = RUTA_FICH+"Actividad6-2.xml";
        String sPDFSalida = RUTA_FICH+"Practica2Out.pdf";

        try {
            Utilidades.generarPDF(sArchivoXml, null, sPDFSalida);
        } catch (Exception e) {
            System.out.println("Error al convertir el archivo");
            e.printStackTrace();
        }
        System.out.println("Archivo pdf generado correctamente.");
    }
}

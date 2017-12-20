package RKinfotech.Class;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfImportedPage;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfWriter;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rk
 */
public class rkFileManager {
    /**
     * 
     * @param empID this id user as Folder Name
     * @param dirCheckPath "\\src\\PDF\\Oform\\Emp\\"
     */
    public void checkFolder(String empID,String dirCheckPath) {
        String getPath;
        try {
            getPath = new File("").getAbsolutePath() + dirCheckPath;
            File theDir = new File(getPath, empID);
            System.out.println("Path :- " + theDir.getAbsolutePath());
            if (!theDir.exists()) {
                System.out.println("creating directory: " + theDir.getName());
                boolean result = false;
                try {
                    theDir.mkdir();
                    result = true;
                } catch (SecurityException se) {
                    se.printStackTrace();
                }
                if (result) {
                    System.out.println("DIR created");
                }
            }
        } catch (Exception e) {
            javax.swing.JOptionPane.showMessageDialog(null, e);
            e.printStackTrace();
        }
    }

    public void mergeFile(String file[], String outPath) {
        List<InputStream> list = new ArrayList<InputStream>();
        try {
            // Source pdfs
            for (String fileName : file) {
                list.add(new FileInputStream(new File(fileName)));
            }
            OutputStream out = new FileOutputStream(new File(outPath));
            doMerge(list, out);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doMerge(List<InputStream> list, OutputStream outputStream)
            throws DocumentException, IOException {
        Document document = new Document();
        PdfWriter writer = PdfWriter.getInstance(document, outputStream);
        document.open();
        PdfContentByte cb = writer.getDirectContent();

        for (InputStream in : list) {
            PdfReader reader = new PdfReader(in);
            for (int i = 1; i <= reader.getNumberOfPages(); i++) {
                document.newPage();
                //import the page from source pdf
                PdfImportedPage page = writer.getImportedPage(reader, i);
                //add the page to the destination pdf
                cb.addTemplate(page, 0, 0);
            }
        }
        outputStream.flush();
        document.close();
        outputStream.close();
    }
}

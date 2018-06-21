package RKinfotech.Class;

import RKinfotech.PMS.RKHome;
import java.awt.Toolkit;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rk
 */
public class PMS {

    public static void main(String[] args) {
        
        try {
            new Thread(() -> {
                try {
                    Thread.sleep(3000);
                } catch (InterruptedException ex) {
                    Logger.getLogger(PMS.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
            RKHome rk = new RKHome();
            rk.setSize(850, 493);
            rk.setVisible(true);
            rk.setResizable(false);
            rk.setIconImage(Toolkit.getDefaultToolkit().getImage("RKinfotech/Image/RKLogo.png"));
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
           javax.swing.JOptionPane.showMessageDialog(null,rkValidation.printErrorStatic("Can't Open Main Class "));
        }
    }
}

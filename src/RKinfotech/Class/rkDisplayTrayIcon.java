package RKinfotech.Class;
import java.awt.Component;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Menu;
import java.awt.MenuItem;
import java.awt.PopupMenu;
import java.awt.SystemTray;
import java.awt.TrayIcon;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.ImageObserver;
import java.awt.image.ImageProducer;
import java.net.URL;
import javax.swing.Icon;

import javax.swing.ImageIcon;

/**
 *
 * @author RK Raju Khunt
 */
public class rkDisplayTrayIcon 
{
    public static TrayIcon trayicon;
    public rkDisplayTrayIcon() {
        ShowTrayIcon();
    }

    private void ShowTrayIcon() {
        
        if(!SystemTray.isSupported())
        {
            System.out.println("Error Your PC Sucks");
            System.exit(0);
            return;
        }
        
        final PopupMenu popu = new PopupMenu();
        trayicon = new TrayIcon(createIcon("/RKinfotech/Image/TrayIcon.png", "Tray"));
        final SystemTray tray = SystemTray.getSystemTray();
        trayicon.setToolTip("GHCL Managament System \n Version 12.12");    
        
        Menu displayMenu = new Menu("Menu");
        
        // Add Componet/ Menu Item
        MenuItem aboutitem =new MenuItem("About");
        MenuItem exititem =new MenuItem("Exit");
        
        MenuItem erroritem =new MenuItem("Error Trigger");
        MenuItem waringitem =new MenuItem("Waring Trigger");
        MenuItem normalitem =new MenuItem("Normal Trigger");
        MenuItem infoitem =new MenuItem("Info Trigger");
        
        
        popu.add(aboutitem);
        popu.addSeparator();
        popu.add(exititem);
        trayicon.setPopupMenu(popu);
        
        // Display Message Menu
        displayMenu.add(erroritem);
        displayMenu.add(waringitem);
        displayMenu.add(normalitem);
        displayMenu.add(infoitem);
        
        aboutitem.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String about = "<b><i>GHCL Managament System</i><b>"
                        + "<hr>Made By RKinfotech - 8469150236";
                javax.swing.JOptionPane.showMessageDialog(null,"Made By Raju Khunt RK At RKinfotech","GHCL Managament System",javax.swing.JOptionPane.PLAIN_MESSAGE);
            }
        });
        
        exititem.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                tray.remove(trayicon);
                System.exit(0);
            }
        });
        
        try {
            tray.add(trayicon);
        } catch (Exception e) {
            System.err.println(e);
        }
    }
    protected static Image createIcon(String path,String desc){
        URL imageURL = rkDisplayTrayIcon.class.getResource(path);
        return (new ImageIcon(imageURL,desc)).getImage();
    }

}

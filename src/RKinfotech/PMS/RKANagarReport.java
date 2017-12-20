/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RKinfotech.PMS;

import RKinfotech.Class.rkConnection;
import RKinfotech.Class.rkDatabase;
import RKinfotech.Class.rkValidation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;

/**
 *
 * @author rk
 */
public class RKANagarReport extends javax.swing.JInternalFrame {

    /**
     * Creates new form RKPlantReport
     */
    public RKANagarReport() {
        initComponents();
        db.rkAutoCompleted(new JComboBox[]{rkYear, rkMonth});
        con = rkConnection.rkConnection();
        year = (String) rkYear.getSelectedItem();
        month = (String) rkMonth.getSelectedItem();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        rkTotal = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        rkIPD = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        rkMale = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        rkFemale = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        rkChild = new javax.swing.JTextField();
        rkSave = new javax.swing.JButton();
        rkIDD = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        rkSOW = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        rkECU = new javax.swing.JTextField();
        jLabel21 = new javax.swing.JLabel();
        rkAPT = new javax.swing.JTextField();
        jLabel22 = new javax.swing.JLabel();
        rkPTS = new javax.swing.JTextField();
        rkMonth = new javax.swing.JComboBox<>();
        rkYear = new javax.swing.JComboBox<>();

        setClosable(true);
        setIconifiable(true);
        setTitle("ANURAG NAGAR REPORT");
        addInternalFrameListener(new javax.swing.event.InternalFrameListener() {
            public void internalFrameOpened(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosing(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosed(javax.swing.event.InternalFrameEvent evt) {
                formInternalFrameClosed(evt);
            }
            public void internalFrameIconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeiconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameActivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeactivated(javax.swing.event.InternalFrameEvent evt) {
            }
        });

        jLabel6.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel6.setText("Month");

        jLabel7.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel7.setText("Year");

        rkTotal.setText("00");
        rkTotal.setEnabled(false);
        rkTotal.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        jLabel11.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel11.setText("Total");

        jLabel12.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel12.setText("Incision Drainage Dressing");

        jLabel13.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel13.setText("IPD");

        rkIPD.setText("00");
        rkIPD.setEnabled(false);
        rkIPD.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        jLabel15.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 3, 14)); // NOI18N
        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel15.setText("OPD");

        jLabel16.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel16.setText("M");

        rkMale.setText("00");
        rkMale.setToolTipText("Male");
        rkMale.setEnabled(false);
        rkMale.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                rkMasterTotalFocusLost(evt);
            }
        });
        rkMale.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        jLabel17.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel17.setText("F");

        rkFemale.setText("00");
        rkFemale.setToolTipText("Female");
        rkFemale.setEnabled(false);
        rkFemale.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                rkMasterTotalFocusLost(evt);
            }
        });
        rkFemale.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        jLabel18.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel18.setText("C");

        rkChild.setText("00");
        rkChild.setToolTipText("Child");
        rkChild.setEnabled(false);
        rkChild.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                rkMasterTotalFocusLost(evt);
            }
        });
        rkChild.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        rkSave.setText("New");
        rkSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rkSaveActionPerformed(evt);
            }
        });

        rkIDD.setText("00");
        rkIDD.setToolTipText("Child");
        rkIDD.setEnabled(false);

        jLabel19.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel19.setText("Suturing Of Wounds");

        rkSOW.setText("00");
        rkSOW.setToolTipText("Child");
        rkSOW.setEnabled(false);
        rkSOW.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        jLabel20.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel20.setText("Ent Check up");

        rkECU.setText("00");
        rkECU.setToolTipText("Child");
        rkECU.setEnabled(false);
        rkECU.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        jLabel21.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel21.setText("Accu-Pressure Therapy");

        rkAPT.setText("00");
        rkAPT.setToolTipText("Child");
        rkAPT.setEnabled(false);
        rkAPT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        jLabel22.setFont(new java.awt.Font("DejaVu Math TeX Gyre", 1, 14)); // NOI18N
        jLabel22.setText("Other PTS.");

        rkPTS.setText("00");
        rkPTS.setToolTipText("Child");
        rkPTS.setEnabled(false);
        rkPTS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                rkMasterKeyPressed(evt);
            }
        });

        rkMonth.setEditable(true);
        rkMonth.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" }));
        rkMonth.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                YearMonthItemStateChanged(evt);
            }
        });

        rkYear.setEditable(true);
        rkYear.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030", "2031", "2032", "2033", "2034", "2035", "2036", "2037", "2038", "2039", "2040", "2041", "2042", "2043", "2044", "2045", "2046", "2047", "2048", "2049", "2050", "2051", "2052", "2053", "2054", "2055", "2056", "2057", "2058", "2059", "2060", "2061", "2062", "2063", "2064", "2065", "2066", "2067", "2068", "2069", "2070", "2071", "2072", "2073", "2074", "2075", "2076", "2077", "2078", "2079", "2080", "2081", "2082", "2083", "2084", "2085", "2086", "2087", "2088", "2089", "2090", "2091", "2092", "2093", "2094", "2095", "2096", "2097", "2098", "2099" }));
        rkYear.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                YearMonthItemStateChanged(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel15, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel16)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(rkMale)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel17)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(rkFemale, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel18)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(rkChild, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel7)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(rkYear, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel6)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(rkMonth, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel11))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(rkTotal)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(rkIPD, javax.swing.GroupLayout.PREFERRED_SIZE, 193, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, Short.MAX_VALUE))))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel19)
                                .addGap(60, 60, 60)
                                .addComponent(rkSOW, javax.swing.GroupLayout.PREFERRED_SIZE, 74, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(rkSave, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(jLabel22, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 1, Short.MAX_VALUE)
                                        .addComponent(jLabel20, javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel21, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addGap(36, 36, 36)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(rkAPT)
                                        .addComponent(rkECU)
                                        .addComponent(rkPTS, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)))))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel12)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(rkIDD)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, 27, Short.MAX_VALUE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(rkMonth)
                        .addComponent(jLabel6)
                        .addComponent(rkYear)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel16, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(rkMale)
                    .addComponent(jLabel17, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(rkFemale)
                    .addComponent(jLabel18, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(rkChild))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(rkTotal))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(rkIPD))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12)
                    .addComponent(rkIDD))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel19)
                    .addComponent(rkSOW))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel20)
                    .addComponent(rkECU))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel21)
                    .addComponent(rkAPT))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(rkPTS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel22))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(rkSave)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void rkMasterKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_rkMasterKeyPressed
        val.rkIsDigit(evt);
    }//GEN-LAST:event_rkMasterKeyPressed

    private void rkSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rkSaveActionPerformed
        try {
            if (null != rkSave.getText()) {
                switch (rkSave.getText()) {
                    case "New":
                        rkPredifineData();
                        break;
                    case "Update":
                        rkUpdate();
                        break;
                    case "Save":
                        rkInsert();
                        break;
                    default:
                        break;
                }
            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, val.printError(e.getClass(), e.getMessage(),getClass().getName()), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_rkSaveActionPerformed

    private void YearMonthItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_YearMonthItemStateChanged
        try {
            year = (String) rkYear.getSelectedItem();
            month = (String) rkMonth.getSelectedItem();
            rkPredifineData();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, val.printError(e.getClass(), e.getMessage(),getClass().getName()), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_YearMonthItemStateChanged

    private void rkMasterTotalFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_rkMasterTotalFocusLost
        try {
            if (rkMale.getText().isEmpty()) {
                rkMale.setText("00");
            } else if (rkFemale.getText().isEmpty()) {
                rkFemale.setText("00");
            } else if (rkChild.getText().isEmpty()) {
                rkChild.setText("00");
            }
            String asn = String.valueOf(Integer.parseInt(rkMale.getText()) + Integer.parseInt(rkFemale.getText()) + Integer.parseInt(rkChild.getText()));
            rkTotal.setText(asn);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(this, val.printError(e.getClass(), e.getMessage(),getClass().getName()), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_rkMasterTotalFocusLost

    private void formInternalFrameClosed(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosed
        try {
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_formInternalFrameClosed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JTextField rkAPT;
    private javax.swing.JTextField rkChild;
    private javax.swing.JTextField rkECU;
    private javax.swing.JTextField rkFemale;
    private javax.swing.JTextField rkIDD;
    private javax.swing.JTextField rkIPD;
    private javax.swing.JTextField rkMale;
    private javax.swing.JComboBox<String> rkMonth;
    private javax.swing.JTextField rkPTS;
    private javax.swing.JTextField rkSOW;
    private javax.swing.JButton rkSave;
    private javax.swing.JTextField rkTotal;
    private javax.swing.JComboBox<String> rkYear;
    // End of variables declaration//GEN-END:variables
    private final rkValidation val = new rkValidation();
    private final rkDatabase db = new rkDatabase();

    private String year, month;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    int rkRowID;

    private void rkUpdate() throws SQLException {
        ps = con.prepareStatement("UPDATE `rkanagar` SET `rkAnagarMale`=?,`rkAnagarFemale`=?,`rkAnagarChild`=?,`rkAnagarIPD`=?,`rkAnagarIID`=?,`rkAnagarSOW`=?,`rkAnagarECU`=?,`rkAnagarAPT`=?,`rkAnagarPTS`=?,`rkAnagarMonth`=?,`rkAnagarYear`=? WHERE `ID` = " + rkRowID);
        ps.setString(1, rkMale.getText());
        ps.setString(2, rkFemale.getText());
        ps.setString(3, rkChild.getText());
        ps.setString(4, rkIPD.getText());
        ps.setString(5, rkIDD.getText());
        ps.setString(6, rkSOW.getText());
        ps.setString(7, rkECU.getText());
        ps.setString(8, rkAPT.getText());
        ps.setString(9, rkPTS.getText());
        ps.setString(10, (String) rkMonth.getSelectedItem());
        ps.setString(11, (String) rkYear.getSelectedItem());
        int count = ps.executeUpdate();
        ps.close();

        if (count > 0) {
            JOptionPane.showMessageDialog(this, "Sucessfully update...", "Update", JOptionPane.INFORMATION_MESSAGE);
        }

        this.dispose();
    }

    private void rkInsert() throws SQLException {
        ps = con.prepareStatement("INSERT INTO `rkanagar`(`rkAnagarMale`, `rkAnagarFemale`, `rkAnagarChild`, `rkAnagarIPD`, `rkAnagarIID`, `rkAnagarSOW`, `rkAnagarECU`, `rkAnagarAPT`, `rkAnagarPTS`, `rkAnagarMonth`, `rkAnagarYear`) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1, rkMale.getText());
        ps.setString(2, rkFemale.getText());
        ps.setString(3, rkChild.getText());
        ps.setString(4, rkIPD.getText());
        ps.setString(5, rkIDD.getText());
        ps.setString(6, rkSOW.getText());
        ps.setString(7, rkECU.getText());
        ps.setString(8, rkAPT.getText());
        ps.setString(9, rkPTS.getText());
        ps.setString(10, (String) rkMonth.getSelectedItem());
        ps.setString(11, (String) rkYear.getSelectedItem());
        int count = ps.executeUpdate();
        ps.close();
        if (count > 0) {
            JOptionPane.showMessageDialog(this, "Sucessfully Saved...", "Record Saved", JOptionPane.INFORMATION_MESSAGE);
        }

        this.dispose();
    }

    private void rkPredifineData() throws SQLException {
        ps = con.prepareStatement("SELECT * FROM `rkanagar` WHERE `rkAnagarMonth` =? AND `rkAnagarYear` =?");
        ps.setString(1, month);
        ps.setString(2, year);
        rs = ps.executeQuery();
        if (rs.next()) {
            rkSave.setText("Update");
            rkRowID = rs.getInt(1);
            rkMale.setText(rs.getString(2));
            rkFemale.setText(rs.getString(3));
            rkChild.setText(rs.getString(4));
            String asn = String.valueOf(Integer.parseInt(rkMale.getText()) + Integer.parseInt(rkFemale.getText()) + Integer.parseInt(rkChild.getText()));
            rkTotal.setText(asn);
            rkIPD.setText(rs.getString(5));
            rkIDD.setText(rs.getString(6));
            rkSOW.setText(rs.getString(7));
            rkECU.setText(rs.getString(8));
            rkAPT.setText(rs.getString(9));
            rkPTS.setText(rs.getString(10));
            rkMale.setEnabled(true);
            rkFemale.setEnabled(true);
            rkChild.setEnabled(true);
            rkIPD.setEnabled(true);
            rkIDD.setEnabled(true);
            rkSOW.setEnabled(true);
            rkECU.setEnabled(true);
            rkAPT.setEnabled(true);
            rkPTS.setEnabled(true);
            rs.close();
            ps.clearParameters();
            ps.close();
        } else {
            rkSave.setText("Save");
            rkMale.setEnabled(true);
            rkFemale.setEnabled(true);
            rkChild.setEnabled(true);
            rkIPD.setEnabled(true);
            rkIDD.setEnabled(true);
            rkSOW.setEnabled(true);
            rkECU.setEnabled(true);
            rkAPT.setEnabled(true);
            rkPTS.setEnabled(true);
            rkMale.setText("00");
            rkFemale.setText("00");
            rkChild.setText("00");
            rkIPD.setText("00");
            rkIDD.setText("00");
            rkSOW.setText("00");
            rkECU.setText("00");
            rkAPT.setText("00");
            rkPTS.setText("00");
        }
    }
}
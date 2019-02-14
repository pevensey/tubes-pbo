/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tubespbo;

import com.mysql.jdbc.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import static tubespbo.Koneksi.rs;
import static tubespbo.Pemesanan_Tiket.con;
import static tubespbo.Pemesanan_Tiket.st;

/**
 *
 * @author Yulianto Pambudi
 */
public class Jenis_Bus extends javax.swing.JFrame {
    private  DefaultTableModel model ;
    Koneksi db = new Koneksi();

    /**
     * Creates new form Jenis_Bus
     */
    public Jenis_Bus() {
        initComponents();
        this.model = new DefaultTableModel(){
            @Override
            public boolean isCellEditable(int row, int column){
                return false;
            }
            
        };
        
        tblbus.setModel(model);
        
        model.addColumn("Plat Nomor");
        model.addColumn("Kapasitas Bus");
        model.addColumn("Kelas Bus");
        model.addColumn("Tahun Produksi Bus");
        
        databis();
        setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        back = new javax.swing.JLabel();
        exit1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblbus = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(850, 509));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setPreferredSize(new java.awt.Dimension(850, 466));

        jPanel2.setBackground(new java.awt.Color(255, 153, 153));
        jPanel2.setPreferredSize(new java.awt.Dimension(588, 207));

        jLabel1.setFont(new java.awt.Font("Meiryo UI", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Jenis Bus");

        back.setBackground(new java.awt.Color(255, 255, 255));
        back.setFont(new java.awt.Font("Meiryo UI", 1, 18)); // NOI18N
        back.setForeground(new java.awt.Color(255, 255, 255));
        back.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        back.setIcon(new javax.swing.ImageIcon(getClass().getResource("/tubespbo/gambar/icons8_Long_Arrow_Left_64px.png"))); // NOI18N
        back.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                backMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                backMousePressed(evt);
            }
        });

        exit1.setBackground(new java.awt.Color(255, 255, 255));
        exit1.setFont(new java.awt.Font("Meiryo UI", 1, 30)); // NOI18N
        exit1.setForeground(new java.awt.Color(255, 255, 255));
        exit1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        exit1.setText("X");
        exit1.setMaximumSize(new java.awt.Dimension(64, 64));
        exit1.setMinimumSize(new java.awt.Dimension(64, 64));
        exit1.setPreferredSize(new java.awt.Dimension(64, 64));
        exit1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                exit1MousePressed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(back, javax.swing.GroupLayout.PREFERRED_SIZE, 53, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(199, 199, 199)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 334, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(exit1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 177, Short.MAX_VALUE)
                .addGap(15, 15, 15))
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(back, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(exit1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 0, Short.MAX_VALUE))
        );

        tblbus.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tblbus);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, 850, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 770, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(40, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(42, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    public void databis () {
        String query;
         try{
            con = db.con;
            query = "SELECT distinct bus.plat, bus.kapasitas, bus.kelas, bus.tahun_produksi from bus \n";
                    
                   
            
            /*query = "SELECT distinct jadwal.hari_tgl, jadwal.jam, \n"
                    + "bus.plat, bus.kelas, rute.asal, rute.tujuan, rute.waktu_tempuh, rute.jarak, bus.id_bus \n"
                    +" from jadwal, bus, rute, lintasan \n"
                    +" where jadwal.id_lintasan = lintasan.id_lintasan  and lintasan.Id_Bus = bus.id_bus \n"
                    +" and lintasan.id_rute = rute.id_rute \n";*/
            
            
          
            st = (Statement) con.createStatement();
            rs = st.executeQuery(query);
            
            while(rs.next()){
                Object[] obj = new Object[4];
              
                obj[0] = rs.getString("plat");
                obj[1] = rs.getString("kapasitas");
                obj[2] = rs.getString("kelas");
                obj[3] = rs.getString("tahun_produksi");                
                
               
                model.addRow(obj);
            }
            
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
    }
    private void backMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_backMouseClicked
        // TODO add your handling code here:
        dispose();
        Menu_Default md = new Menu_Default();
        md.setVisible(true);
    }//GEN-LAST:event_backMouseClicked

    private void backMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_backMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_backMousePressed

    private void exit1MousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_exit1MousePressed
        // TODO add your handling code here:
        System.exit(0);
    }//GEN-LAST:event_exit1MousePressed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Jenis_Bus.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Jenis_Bus.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Jenis_Bus.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Jenis_Bus.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Jenis_Bus().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel back;
    private javax.swing.JLabel exit1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblbus;
    // End of variables declaration//GEN-END:variables
}
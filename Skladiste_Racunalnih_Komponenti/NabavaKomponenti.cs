using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Npgsql;

namespace Skladiste_Racunalnih_Komponenti
{
    
    public partial class NabavaKomponenti : Form
    {
        SpajanjeNaDB spajanjeNaDB = new SpajanjeNaDB();
        int selectedNabava = 0;
        int selectedNarudzbenica = 0;
        int kolicina_za_nabaviti = 0;
        int komponentaID = 0;
        int nabavaID = 0;
        public NabavaKomponenti()
        {
            InitializeComponent();
        }

        private void UcitajNabavu(NpgsqlConnection connection)
        {
            string sql = "SELECT \"Nabava_Komponenti\".\"ID_nabave\", " +
                                "\"Nabava_Komponenti\".\"Trenutno_stanje\", " +
                                "\"Nabava_Komponenti\".\"Datum_trenutnog_stanja\", " +
                                "\"Nabava_Komponenti\".\"Kolicina_za_nabaviti\", " +
                                "\"Nabava_Komponenti\".\"Datum_Zaprimanja\", " +
                                "\"Nabava_Komponenti\".\"KomponentaID\", " +
                                "\"Nabava_Komponenti\".\"Dostavljeno\" " +
                         "FROM \"Nabava_Komponenti\"" +
                         "WHERE \"Nabava_Komponenti\".\"Dostavljeno\" = 'false'" +
                         "ORDER BY \"Nabava_Komponenti\".\"Datum_Zaprimanja\"";

            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter(sql, connection);
            DataSet podaciNabave = new DataSet();

            dataAdapter.Fill(podaciNabave);
            dgvNabava.DataSource = podaciNabave.Tables[0];

            dgvNabava.Columns[0].HeaderText = "Oznaka";
            dgvNabava.Columns[1].HeaderText = "Trenutno stanje";
            dgvNabava.Columns[2].HeaderText = "Datum trenutnog stanja";
            dgvNabava.Columns[3].HeaderText = "Kolicina za nabaviti";
            dgvNabava.Columns[4].HeaderText = "Datum zaprimanja";
            dgvNabava.Columns[5].HeaderText = "Oznaka komponente";

            this.dgvNabava.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.dgvNabava.Columns[3].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.dgvNabava.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
        }

        private void UcitajNarudzbenice(NpgsqlConnection connection)
        {
            string sql = "SELECT \"Narudzbenica\".\"ID_narudzbenice\", " +
                                "\"Narudzbenica\".\"Datum\", " +
                                "\"Narudzbenica\".\"Kolicina\", " +
                                "\"Narudzbenica\".\"NabavaID\", " +
                                "\"Narudzbenica\".\"KomponentaID\" " +
                         "FROM \"Narudzbenica\"" +
                         "ORDER BY \"Narudzbenica\".\"ID_narudzbenice\"";

            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter(sql, connection);
            DataSet podaciNarudzbenice = new DataSet();

            dataAdapter.Fill(podaciNarudzbenice);
            dgvNarudzbenica.DataSource = podaciNarudzbenice.Tables[0];

            dgvNarudzbenica.Columns[0].HeaderText = "Oznaka";
            dgvNarudzbenica.Columns[3].HeaderText = "Oznaka nabave";
            dgvNarudzbenica.Columns[4].HeaderText = "Oznaka komponente";

            this.dgvNarudzbenica.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.dgvNarudzbenica.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.dgvNarudzbenica.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.dgvNarudzbenica.Columns[3].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.dgvNarudzbenica.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;


        }

        private void UcitajPovijest(NpgsqlConnection connection)
        {
            string sql = "SELECT \"Nabava_Komponenti\".\"ID_nabave\", " +
                                "\"Nabava_Komponenti\".\"Trenutno_stanje\", " +
                                "\"Nabava_Komponenti\".\"Datum_trenutnog_stanja\", " +
                                "\"Nabava_Komponenti\".\"Kolicina_za_nabaviti\", " +
                                "\"Nabava_Komponenti\".\"Datum_Zaprimanja\", " +
                                "\"Nabava_Komponenti\".\"KomponentaID\", " +
                                "\"Nabava_Komponenti\".\"Dostavljeno\" " +
                         "FROM \"Nabava_Komponenti\"" +
                         "WHERE \"Nabava_Komponenti\".\"Dostavljeno\" = 'true'" +
                         "ORDER BY \"Nabava_Komponenti\".\"Datum_Zaprimanja\"";

            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter(sql, connection);
            DataSet podaciPovijest = new DataSet();

            dataAdapter.Fill(podaciPovijest);
            dgvPovijest.DataSource = podaciPovijest.Tables[0];

            dgvPovijest.Columns[0].HeaderText = "Oznaka";
            dgvPovijest.Columns[1].HeaderText = "Trenutno stanje";
            dgvPovijest.Columns[2].HeaderText = "Datum trenutnog stanja";
            dgvPovijest.Columns[3].HeaderText = "Kolicina za nabaviti";
            dgvPovijest.Columns[4].HeaderText = "Datum zaprimanja";
            dgvPovijest.Columns[5].HeaderText = "Oznaka komponente";

            this.dgvPovijest.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
        }

        private void NabavaKomponenti_Load(object sender, EventArgs e)
        {
            spajanjeNaDB.SpojiNaBazu();
            UcitajNabavu(spajanjeNaDB.connection);
            UcitajNarudzbenice(spajanjeNaDB.connection);
            UcitajPovijest(spajanjeNaDB.connection);
            spajanjeNaDB.OdspojiSBaze();
        }

        
        private void btnNaruci_Click(object sender, EventArgs e)
        {
            spajanjeNaDB.SpojiNaBazu();

            string sql = "INSERT INTO \"Narudzbenica\" " +
                         "VALUES (DEFAULT, DEFAULT, " +
                         "" + kolicina_za_nabaviti + ", " +
                         "" + selectedNabava + ", " +
                         "" + komponentaID + ");";

            NpgsqlCommand command = new NpgsqlCommand(sql, spajanjeNaDB.connection);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Something happened!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            UcitajNabavu(spajanjeNaDB.connection);
            UcitajNarudzbenice(spajanjeNaDB.connection);
            UcitajPovijest(spajanjeNaDB.connection);
            spajanjeNaDB.OdspojiSBaze();
        }

        private void dgvNabava_SelectionChanged(object sender, EventArgs e)
        {
            try
            {
                selectedNabava = int.Parse(dgvNabava.CurrentRow.Cells[0].Value.ToString());
                kolicina_za_nabaviti = int.Parse(dgvNabava.CurrentRow.Cells[3].Value.ToString());
                komponentaID = int.Parse(dgvNabava.CurrentRow.Cells[5].Value.ToString());
            }
            catch (Exception ex)
            {
                selectedNabava = 0;
                komponentaID = 0;
            }
        }

        private void btnDostavljeno_Click(object sender, EventArgs e)
        {
            spajanjeNaDB.SpojiNaBazu();
            
            string sql = "DELETE " +
                         "FROM \"Narudzbenica\" " +
                         "WHERE \"Narudzbenica\".\"NabavaID\" = " + nabavaID + " ;";
            
            NpgsqlCommand command = new NpgsqlCommand(sql, spajanjeNaDB.connection);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Something happened!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            UcitajNabavu(spajanjeNaDB.connection);
            UcitajNarudzbenice(spajanjeNaDB.connection);
            UcitajPovijest(spajanjeNaDB.connection);
            spajanjeNaDB.OdspojiSBaze();
        }

        private void dgvNarudzbenica_SelectionChanged(object sender, EventArgs e)
        {
            try
            {
                selectedNarudzbenica = int.Parse(dgvNarudzbenica.CurrentRow.Cells[0].Value.ToString());
                nabavaID = int.Parse(dgvNarudzbenica.CurrentRow.Cells[3].Value.ToString());
            }
            catch (Exception ex)
            {
                selectedNarudzbenica = 0;
                nabavaID = 0;
            }
        }
    }
}

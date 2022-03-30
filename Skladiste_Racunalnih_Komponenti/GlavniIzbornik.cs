using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Skladiste_Racunalnih_Komponenti
{
    public partial class GlavniIzbornik : Form
    {
        public GlavniIzbornik()
        {
            InitializeComponent();
        }

        private void btnStanje_Click(object sender, EventArgs e)
        {
            StanjeSkladišta stanjeSkladišta = new StanjeSkladišta();
            stanjeSkladišta.Show();
        }

        private void btnUnos_Click(object sender, EventArgs e)
        {
            UnosKomponenti unosKomponenti = new UnosKomponenti();
            unosKomponenti.Show();
        }

        private void btnPregled_Click(object sender, EventArgs e)
        {
            PregledKomponenti pregledKomponenti = new PregledKomponenti();
            pregledKomponenti.Show();
        }

        private void btnNabava_Click(object sender, EventArgs e)
        {
            NabavaKomponenti nabavaKomponenti = new NabavaKomponenti();
            nabavaKomponenti.Show();
        }

        private void btnKarak_Click(object sender, EventArgs e)
        {
            UnosKarakteristika unosKarakteristika = new UnosKarakteristika();
            unosKarakteristika.Show();
        }
    }
}

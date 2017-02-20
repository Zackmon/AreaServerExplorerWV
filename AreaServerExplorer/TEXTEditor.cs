﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AreaServerExplorer
{
    public partial class TEXTEditor : Form
    {
        public string filename;
        public byte[] filebuff;
        public List<byte[]> entries;

        public TEXTEditor()
        {
            InitializeComponent();
        }

        private void TEXTEditor_Load(object sender, EventArgs e)
        {
            filebuff = FileHelper.DecryptFile(filename);
            Reload();
            RefreshList();
        }

        public void Reload()
        {
            entries = FileHelper.ReadTEXTFile(filebuff);            
        }

        public void RefreshList()
        {
            listBox1.Items.Clear();
            foreach (byte[] entry in entries)
                listBox1.Items.Add(Encoding.UTF7.GetString(entry));
        }

        private void listBox1_DoubleClick(object sender, EventArgs e)
        {
            int n = listBox1.SelectedIndex;
            if (n == -1)
                return;
            string input = Microsoft.VisualBasic.Interaction.InputBox("Please enter new string", "Edit entry", Encoding.UTF7.GetString(entries[n]));
            if (input != "")
            {
                entries[n] = Encoding.UTF7.GetBytes(input);
                filebuff = FileHelper.CompileTEXTEntries(entries);
                Reload();
                RefreshList();
                listBox1.SelectedIndex = n;
            }
        }

        private void saveExitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FileHelper.EncryptFile(FileHelper.CompileTEXTEntries(entries), filename);
            this.Close();
        }
    }
}
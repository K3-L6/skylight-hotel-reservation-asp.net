namespace SkylightHotelReservationApp
{
    partial class WINDOW_reserve
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.logo = new System.Windows.Forms.PictureBox();
            this.mainTitle = new System.Windows.Forms.Panel();
            this.roomAvailablesLbl = new System.Windows.Forms.Label();
            this.roomView = new System.Windows.Forms.ListBox();
            this.contactFld = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.emailFld = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.nameFld = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel6 = new System.Windows.Forms.Panel();
            this.panelTitle = new System.Windows.Forms.Label();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.reserveBtn = new System.Windows.Forms.Button();
            this.backBtn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.logo)).BeginInit();
            this.mainTitle.SuspendLayout();
            this.SuspendLayout();
            // 
            // logo
            // 
            this.logo.Image = global::SkylightHotelReservationApp.Properties.Resources.logo;
            this.logo.Location = new System.Drawing.Point(0, 0);
            this.logo.Name = "logo";
            this.logo.Size = new System.Drawing.Size(345, 110);
            this.logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.logo.TabIndex = 15;
            this.logo.TabStop = false;
            // 
            // mainTitle
            // 
            this.mainTitle.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.mainTitle.Controls.Add(this.roomAvailablesLbl);
            this.mainTitle.Controls.Add(this.roomView);
            this.mainTitle.Controls.Add(this.contactFld);
            this.mainTitle.Controls.Add(this.label3);
            this.mainTitle.Controls.Add(this.emailFld);
            this.mainTitle.Controls.Add(this.label2);
            this.mainTitle.Controls.Add(this.nameFld);
            this.mainTitle.Controls.Add(this.label1);
            this.mainTitle.Location = new System.Drawing.Point(76, 116);
            this.mainTitle.Name = "mainTitle";
            this.mainTitle.Size = new System.Drawing.Size(526, 286);
            this.mainTitle.TabIndex = 21;
            // 
            // roomAvailablesLbl
            // 
            this.roomAvailablesLbl.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.roomAvailablesLbl.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.roomAvailablesLbl.Location = new System.Drawing.Point(287, 10);
            this.roomAvailablesLbl.Name = "roomAvailablesLbl";
            this.roomAvailablesLbl.Size = new System.Drawing.Size(230, 36);
            this.roomAvailablesLbl.TabIndex = 39;
            this.roomAvailablesLbl.Text = "Room Number";
            this.roomAvailablesLbl.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // roomView
            // 
            this.roomView.AccessibleDescription = "Room Number";
            this.roomView.AccessibleName = "";
            this.roomView.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F);
            this.roomView.FormattingEnabled = true;
            this.roomView.ItemHeight = 31;
            this.roomView.Location = new System.Drawing.Point(307, 49);
            this.roomView.Name = "roomView";
            this.roomView.Size = new System.Drawing.Size(210, 221);
            this.roomView.TabIndex = 38;
            this.roomView.SelectedIndexChanged += new System.EventHandler(this.roomView_SelectedIndexChanged);
            // 
            // contactFld
            // 
            this.contactFld.Enabled = false;
            this.contactFld.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.contactFld.Location = new System.Drawing.Point(3, 226);
            this.contactFld.Name = "contactFld";
            this.contactFld.Size = new System.Drawing.Size(294, 33);
            this.contactFld.TabIndex = 37;
            this.contactFld.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label3
            // 
            this.label3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.label3.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(3, 186);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(203, 37);
            this.label3.TabIndex = 36;
            this.label3.Text = "Contact";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // emailFld
            // 
            this.emailFld.Enabled = false;
            this.emailFld.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.emailFld.Location = new System.Drawing.Point(3, 142);
            this.emailFld.Name = "emailFld";
            this.emailFld.Size = new System.Drawing.Size(294, 33);
            this.emailFld.TabIndex = 35;
            this.emailFld.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label2
            // 
            this.label2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(3, 102);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(203, 37);
            this.label2.TabIndex = 34;
            this.label2.Text = "Email";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // nameFld
            // 
            this.nameFld.Enabled = false;
            this.nameFld.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nameFld.Location = new System.Drawing.Point(3, 58);
            this.nameFld.Name = "nameFld";
            this.nameFld.Size = new System.Drawing.Size(294, 33);
            this.nameFld.TabIndex = 33;
            this.nameFld.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label1
            // 
            this.label1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(203, 37);
            this.label1.TabIndex = 32;
            this.label1.Text = "Name";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panel6
            // 
            this.panel6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(108)))), ((int)(((byte)(195)))));
            this.panel6.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel6.Location = new System.Drawing.Point(351, 94);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(273, 16);
            this.panel6.TabIndex = 23;
            // 
            // panelTitle
            // 
            this.panelTitle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(108)))), ((int)(((byte)(195)))));
            this.panelTitle.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelTitle.Font = new System.Drawing.Font("Century Gothic", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelTitle.ForeColor = System.Drawing.Color.White;
            this.panelTitle.Location = new System.Drawing.Point(394, 55);
            this.panelTitle.Name = "panelTitle";
            this.panelTitle.Size = new System.Drawing.Size(230, 36);
            this.panelTitle.TabIndex = 24;
            this.panelTitle.Text = "Available Room";
            this.panelTitle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(108)))), ((int)(((byte)(195)))));
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel4.Location = new System.Drawing.Point(608, 116);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(16, 333);
            this.panel4.TabIndex = 25;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(108)))), ((int)(((byte)(195)))));
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Location = new System.Drawing.Point(54, 116);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(16, 286);
            this.panel1.TabIndex = 26;
            // 
            // reserveBtn
            // 
            this.reserveBtn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(108)))), ((int)(((byte)(195)))));
            this.reserveBtn.Font = new System.Drawing.Font("Century Gothic", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.reserveBtn.ForeColor = System.Drawing.Color.White;
            this.reserveBtn.Location = new System.Drawing.Point(296, 409);
            this.reserveBtn.Name = "reserveBtn";
            this.reserveBtn.Size = new System.Drawing.Size(150, 40);
            this.reserveBtn.TabIndex = 27;
            this.reserveBtn.Text = "Reserve";
            this.reserveBtn.UseVisualStyleBackColor = false;
            this.reserveBtn.Click += new System.EventHandler(this.reserveBtn_Click);
            // 
            // backBtn
            // 
            this.backBtn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(15)))), ((int)(((byte)(108)))), ((int)(((byte)(195)))));
            this.backBtn.Font = new System.Drawing.Font("Century Gothic", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.backBtn.ForeColor = System.Drawing.Color.White;
            this.backBtn.Location = new System.Drawing.Point(452, 409);
            this.backBtn.Name = "backBtn";
            this.backBtn.Size = new System.Drawing.Size(150, 40);
            this.backBtn.TabIndex = 28;
            this.backBtn.Text = "Back";
            this.backBtn.UseVisualStyleBackColor = false;
            this.backBtn.Click += new System.EventHandler(this.backBtn_Click);
            // 
            // WINDOW_reserve
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(684, 461);
            this.Controls.Add(this.backBtn);
            this.Controls.Add(this.reserveBtn);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panelTitle);
            this.Controls.Add(this.panel6);
            this.Controls.Add(this.mainTitle);
            this.Controls.Add(this.logo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "WINDOW_reserve";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            ((System.ComponentModel.ISupportInitialize)(this.logo)).EndInit();
            this.mainTitle.ResumeLayout(false);
            this.mainTitle.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox logo;
        private System.Windows.Forms.Panel mainTitle;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Label panelTitle;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button reserveBtn;
        private System.Windows.Forms.Button backBtn;
        private System.Windows.Forms.TextBox contactFld;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox emailFld;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox nameFld;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox roomView;
        private System.Windows.Forms.Label roomAvailablesLbl;
    }
}
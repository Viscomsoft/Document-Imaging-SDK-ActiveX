Public Class Form1

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click

        If TextBox1.Text = "" Then
            MessageBox.Show("Please select PDF 1 file")
            Exit Sub
        End If

        If TextBox2.Text = "" Then
            MessageBox.Show("Please select PDF 2 file")
            Exit Sub
        End If


        SaveFileDialog1.Filter = "PDF Files (*.pdf)|*.pdf"

        If SaveFileDialog1.ShowDialog() = DialogResult.OK Then
            AxImageViewer1.PDFEditMerge(TextBox1.Text, TextBox2.Text, SaveFileDialog1.FileName)
            MessageBox.Show("Merge Completed")

        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        OpenFileDialog1.Filter = "PDF (*.pdf)|*.pdf"

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            TextBox1.Text = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        OpenFileDialog1.Filter = "PDF (*.pdf)|*.pdf"

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            TextBox2.Text = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        OpenFileDialog1.Filter = "PDF (*.pdf)|*.pdf"

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            TextBox3.Text = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        If TextBox3.Text = "" Then
            MessageBox.Show("Please select PDF file")
            Exit Sub
        End If

        AxImageViewer1.PDFEditDeletePage(TextBox3.Text, TextBox4.Text)
        MessageBox.Show("Delete Page Completed")

    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        OpenFileDialog1.Filter = "PDF (*.pdf)|*.pdf"

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            TextBox5.Text = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        OpenFileDialog1.Filter = "PDF (*.pdf)|*.pdf"

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            TextBox6.Text = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub Button8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        If TextBox5.Text = "" Then
            MessageBox.Show("Please select PDF Source file")
            Exit Sub
        End If

        If TextBox6.Text = "" Then
            MessageBox.Show("Please select Append from PDF File")
            Exit Sub
        End If
        SaveFileDialog1.Filter = "PDF Files (*.pdf)|*.pdf"

        If SaveFileDialog1.ShowDialog() = DialogResult.OK Then
            AxImageViewer1.PDFEditAddPage(TextBox5.Text, TextBox7.Text, TextBox6.Text, SaveFileDialog1.FileName)
            MessageBox.Show("Add Page Completed")

        End If

    End Sub

    Private Sub Button9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button9.Click
        OpenFileDialog1.Filter = "PDF (*.pdf)|*.pdf"

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            TextBox8.Text = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub Button10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button10.Click
        If TextBox8.Text = "" Then
            MessageBox.Show("Please select PDF source File")
            Exit Sub
        End If

        SaveFileDialog1.Filter = "PDF Files (*.pdf)|*.pdf"
        SaveFileDialog2.Filter = "PDF Files (*.pdf)|*.pdf"

        If SaveFileDialog1.ShowDialog() = DialogResult.OK Then

            If SaveFileDialog2.ShowDialog() = DialogResult.OK Then

                AxImageViewer1.PDFEditSplit(TextBox8.Text, TextBox9.Text, SaveFileDialog1.FileName, SaveFileDialog2.FileName)
            End If
        End If
    End Sub

    Private Sub Button11_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button11.Click
        OpenFileDialog1.Filter = "PDF (*.pdf)|*.pdf"

        If OpenFileDialog1.ShowDialog() = DialogResult.OK Then
            TextBox10.Text = OpenFileDialog1.FileName
        End If

    End Sub

    Private Sub Button12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button12.Click

        If TextBox10.Text = "" Then
            MessageBox.Show("Please select PDF file")
            Exit Sub
        End If

        SaveFileDialog1.Filter = "PDF Files (*.pdf)|*.pdf"

        If SaveFileDialog1.ShowDialog() = DialogResult.OK Then
            AxImageViewer1.PDFEditCrop(TextBox10.Text, TextBox11.Text, TextBox12.Text, TextBox13.Text, TextBox14.Text, SaveFileDialog1.FileName)
        End If

        MessageBox.Show("Crop Completed")

    End Sub
End Class

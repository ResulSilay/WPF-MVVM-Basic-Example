   M S B A M L   `   `   `  ���� C  ?Notebook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Notebook.UI.ModelNotebook.UI.Model  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem =#clr-namespace:Notebook.UI.ViewModelNotebook.UI.ViewModel      Notebook.UI.View.NoteView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1modelclr-namespace:Notebook.UI.Model     6sys&clr-namespace:System;assembly=mscorlib     9	viewModel#clr-namespace:Notebook.UI.ViewModel     $
��1225��$��689.5��  � DataContext  )   #Notebook.UI.ViewModel.NoteViewModel  -   	viewModel�� � 	Resources    NoteDataTemplate �� DataType   Notebook.UI.Model.Note �� Orientation �� Path �� Mode  ButtonListBoxStyle �� ElementName �� Opacity �� Color��%�  &	        7  7  �� "  .R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $	��100��$��Center=�$��Stretch=����� $ Title�$ TwoWay=��� $	��335��$��Center=�$��Stretch=����� $ Description�$ TwoWay=��� $
��auto��$��Center=�$��Stretch=����� $ DateTime�$ OneWay=��� $��Right=�$��Center=�$ 
Horizontal=�.+��� $
��auto��$��Center=�$��Detay��8��  ���� $ NoteListBox��$% DataContext.OnNoteDetailCommand����� �� $
��auto��$��Center=�$	��Sil��8�� ���� $ NoteListBox��$% DataContext.OnNoteDeleteCommand����� �� ���� $
 0.03Q�$ 	#FF0F0F0F��.��� 	 � ColumnDefinitions	 �� $
��694* ��� $
��531* �.+�� $��0�����#FCF7F5.+��� $��	18,22,0,0q�$
��Left=�$	��Top=�$��notebook��$��Times New Roman)�$��27(�$
��Bold"��� $��	18,75,0,0q�$
��Left=�$	��Top=�$O��I"merhaba, hoş geldin. bu gün notlarına göz atmanı tavsiye ediyoruz."��$��Times New Roman)�$��16(�� $��1�����#ffffff.+��� $��	60,57,0,0q�$
��Left=�$	��Top=�$(��"bugün bir not eklemek istermisin?��$��Times New Roman)�$��17(�$
��Bold"��� $��
60,114,0,0q�$
��Left=�$	��Top=�$$��Bir başlık belirleyebilirsin��$��Times New Roman)�$��13(��� -   
 ��Name$
 TxtTitle��$��60,145,60,0q�$	��Top=�$��Times New Roman)�  
InputStyle#���  ���� *NoteModel.Title+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� $��
60,204,0,0q�$
��Left=�$	��Top=�$%��Notun ile ilgili birşeyler yaz��$��Times New Roman)�$��13(��� $	��136��$��60,235,60,0q�$	��Top=�$��Times New Roman)�#���   �� TextWrapping$
 Wrap=����� *NoteModel.Description+$ TwoWay=�$ PropertyChanged=��� $��
60,394,0,0q�$
��Left=�$	��Top=�$��Tarih seçebilirsin��$��Times New Roman)�$��13(�(  "System.Windows.Controls.DatePicker  $��60,424,60,0q�$	��Top=�$��Times New Roman)�  DataPickerStyle#��[    SelectedDate �� *NoteModel.DateTime+$ TwoWay=�$ PropertyChanged=��� $��49��$��60,512,60,0q�$	��Top=�$��K A Y D E T��$��12(�$
��Bold"�  ButtonStyle#���  ���� *OnNoteInsertCommand+���� *	NoteModel+�� $��49��$��60,575,60,0q�$	��Top=�$��Ç I K I Ş��$��11(�$
��Bold"�  ButtonLightStyle#���  ���� *OnExitCommand+�� -   $��NoteListBox��$��17,138,17,0q�$��Stretch=�
������ $��0q�#��[  $��Hidden=����� *Notes+�� $	��100��$��59��$��483,578,0,0q�$
��Left=�$	��Top=�$��DETAILS��$y�	Collapsed=����� *OnSelectedDetailCommand+���� $ NoteListBox��$ SelectedItem�
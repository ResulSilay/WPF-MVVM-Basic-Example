   M S B A M L   `   `   `  ����C  ?Notebook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Notebook.UI.ModelNotebook.UI.Model  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      =#clr-namespace:Notebook.UI.ViewModelNotebook.UI.ViewModel  5	          Notebook.UI.View.NoteView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      1modelclr-namespace:Notebook.UI.Model     5      6sys&clr-namespace:System;assembly=mscorlib     5      9	viewModel#clr-namespace:Notebook.UI.ViewModel     5	      $
��1225��5
      $��689.5��5        � DataContext  5      )   #Notebook.UI.ViewModel.NoteViewModel  5   
   -   5        	viewModel��5   "    � 	Resources 5         NoteDataTemplate �� DataType   Notebook.UI.Model.Note �� Orientation �� Path �� Mode  ButtonListBoxStyle �� ElementName �� Opacity �� Color��%+  &	        7  7  �� 5   
   "  60   .R�5      �� $ Vertical=�6   .+�5      �� $ 
Horizontal=�6   .+�5      �� $	��100��5      $��Center=�5      $��Stretch=�5      ��5      �� $ Title�$ TwoWay=��� 5      $	��335��5      $��Center=�5      $��Stretch=�5      ��5      �� $ Description�$ TwoWay=��� 5       $
��auto��5!      $��Center=�5"      $��Stretch=�5#      ��5$      �� $ DateTime�$ OneWay=��� 5&      $��Right=�5'      $��Center=�5(      $ 
Horizontal=�5)      .+�5*      �� $
��auto��5+      $��Center=�5,      $��Detay��5/      8��  ��5-      �� $ NoteListBox��$% DataContext.OnNoteDetailCommand���5.      �� 50      �� 52      $
��auto��53      $��Center=�54      $	��Sil��57      8�� ��55      �� $ NoteListBox��$% DataContext.OnNoteDeleteCommand���56      �� 58      59      5:      �� 5;      ��5<      �� 5=      $
 0.03Q�6*   $ 	#FF0F0F0F��69   5?      5@      5A      5B      .��5D      � 	 � ColumnDefinitions	 5E   
   �� 5F      $
��694* �6   �� 5G      $
��531* �6   .+�5J   
   � $��0��6   ���#FCF7F5.+�5K      �� $��	18,22,0,0q�5L      $
��Left=�5M      $	��Top=�5N      $��notebook��5O      $��Times New Roman)�5P      $��27(�5Q      $
��Bold"�5R      �� 5S      $��	18,75,0,0q�5T      $
��Left=�5U      $	��Top=�5V      $O��I"merhaba, hoş geldin. bu gün notlarına göz atmanı tavsiye ediyoruz."��5W      $��Times New Roman)�5X      $��16(�5Y      5Z      � 5\   
   $��1��6   ���#ffffff.+�5]      �� $��	60,57,0,0q�5^      $
��Left=�5_      $	��Top=�5`      $(��"bugün bir not eklemek istermisin?��5a      $��Times New Roman)�5b      $��17(�5c      $
��Bold"�5d      �� 5e      $��
60,114,0,0q�5f      $
��Left=�5g      $	��Top=�5h      $$��Bir başlık belirleyebilirsin��5i      $��Times New Roman)�5j      $��13(�5k      �� 5l      -   5        
 ��Name$
 TxtTitle��5m      $��60,145,60,0q�5n      $	��Top=�5o      $��Times New Roman)�5p        
InputStyle#���  5q      ��5r      �� *NoteModel.Title+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5s      $��
60,204,0,0q�5t      $
��Left=�5u      $	��Top=�5v      $%��Notun ile ilgili birşeyler yaz��5w      $��Times New Roman)�5x      $��13(�5y      �� 5z      $	��136��5{      $��60,235,60,0q�5|      $	��Top=�5}      $��Times New Roman)�5~      #���  5       �� TextWrapping$
 Wrap=�5�      ��5�      �� *NoteModel.Description+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��
60,394,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��Tarih seçebilirsin��5�      $��Times New Roman)�5�      $��13(�5�      (  "System.Windows.Controls.DatePicker  5�      $��60,424,60,0q�5�      $	��Top=�5�      $��Times New Roman)�5�        DataPickerStyle#��[ 5�         SelectedDate 5�      �� *NoteModel.DateTime+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��49��5�      $��60,512,60,0q�5�      $	��Top=�5�      $��K A Y D E T��5�      $��12(�5�      $
��Bold"�5�        ButtonStyle#���  5�      ��5�      �� *OnNoteInsertCommand+��5�      �� *	NoteModel+5�      �� 5�      $��49��5�      $��60,575,60,0q�5�      $	��Top=�5�      $��Ç I K I Ş��5�      $��11(�5�      $
��Bold"�5�        ButtonLightStyle#���  5�      ��5�      �� *OnExitCommand+5�      5�      �� 5�   
   -   5        $��NoteListBox��5�      $��17,138,17,0q�5�      $��Stretch=�5�      
������ $��0q�5�      #��[  5�      $��Hidden=�5�      ��5�      �� *Notes+5�      �� 5�   
   $	��100��5�      $��59��5�      $��483,578,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��DETAILS��5�      $y�	Collapsed=�5�      ��5�      �� *OnSelectedDetailCommand+��5�      �� $ NoteListBox��$ SelectedItem�5�      5�      5�      
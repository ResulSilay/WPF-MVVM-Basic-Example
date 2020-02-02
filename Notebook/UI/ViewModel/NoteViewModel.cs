using Notebook.Base;
using Notebook.UI.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Notebook.UI.ViewModel
{
    public class NoteViewModel : ViewModelBase
    {
        public ObservableCollection<Note> Notes { get; set; }
        public ICommand OnNoteDetailCommand { get; set; }
        public ICommand OnNoteInsertCommand { get; set; }
        public ICommand OnNoteDeleteCommand { get; set; }
        public ICommand OnExitCommand { get; set; }

        private Note noteModel;
        public Note NoteModel
        {
            get { return noteModel; }
            set { noteModel = value; }
        }

        public NoteViewModel()
        {
            noteModel = new Note();
            Load();

            OnNoteDetailCommand = new RelayCommand<Note>(OnDetail);
            OnNoteInsertCommand = new RelayCommand<Note>(OnInsert);
            OnNoteDeleteCommand = new RelayCommand<Note>(OnDelete);
            OnExitCommand = new RelayCommand<Note>(OnExit);
        }

        public void Load()
        {
            Notes = new ObservableCollection<Note>
            {
                new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", DateTime = DateTime.Now }
            };
        }

        public void OnDetail(Note note)
        {
            if (note != null)
            {
                MessageBox.Show(String.Format("{0}\n{1}\n\n{2}", note.Title, note.Description, note.DateTime.ToString()));
            }
        }

        public void OnInsert(Note note)
        {

            if (note != null && note.Title != null && note.Description != null)
            {
                Notes.Add(new Note { Title = note.Title, Description = note.Description, DateTime = note.DateTime });
                NoteModel.Clear();
            }
            else
            {
                MessageBox.Show("Lütfen tüm alanları doldurunuz.");
            }
        }

        public void OnDelete(Note note)
        {
            if (note != null)
            {
                Notes.Remove(note);
            }
        }

        public void OnExit(Object item) => Application.Current.Shutdown();
    }
}
using Notebook.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Notebook.UI.Model
{
    public class Note : ObservableBase
    {
        private string title;
        private string description;
        private DateTime datetime = DateTime.Now;

        public string Title
        {
            get
            {
                return title;
            }
            set
            {
                if (title != value)
                {
                    title = value;
                    RaisePropertyChanged("Title");
                }
            }
        }

        public string Description
        {
            get
            {
                return description;
            }
            set
            {
                if (description != value)
                {
                    description = value;
                    RaisePropertyChanged("Description");
                }
            }
        }

        public DateTime DateTime
        {
            get
            {
                return datetime;
            }
            set
            {
                if (datetime != value)
                {
                    datetime = value;
                    RaisePropertyChanged("DateTime");
                }
            }
        }

        public void Clear()
        {
            Title = null;
            Description = null;
            DateTime = DateTime.Now;
        }
    }
}
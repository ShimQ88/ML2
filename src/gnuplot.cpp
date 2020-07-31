#include "gnuplot.h"

void run_gnuplot(){
    Gnuplot gp;
    ifstream f_plot;
    // f_plot.open ("plot/command.txt");
    f_plot.open ("plot/temp_com5.txt");
    string line;
    if(f_plot.is_open())
    {
        while (getline(f_plot,line))
        {
          cout << line << '\n';
          // cout<<line<<endl;
          gp(line);
          // getchar();
        }
        f_plot.close();
    }
}
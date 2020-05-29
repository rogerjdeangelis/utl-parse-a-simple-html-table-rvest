Parse a simple html table                                                                                  
                                                                                                           
  Two Solutions                                                                                            
                                                                                                           
      a. SAS                                                                                               
         https://stackoverflow.com/users/5342700/stu-sztukowski                                            
      b. R                                                                                                 
                                                                                                           
github                                                                                                     
https://github.com/rogerjdeangelis/utl-parse-a-simple-html-table-rvest                                     
                                                                                                           
related repos                                                                                              
https://github.com/rogerjdeangelis?tab=repositories&q=htm&type=&language=                                  
                                                                                                           
Stackoverflow                                                                                              
https://stackoverflow.com/questions/62086864/parsing-html-data-in-sas                                      
                                                                                                           
*_                   _                                                                                     
(_)_ __  _ __  _   _| |_                                                                                   
| | '_ \| '_ \| | | | __|                                                                                  
| | | | | |_) | |_| | |_                                                                                   
|_|_| |_| .__/ \__,_|\__|                                                                                  
        |_|                                                                                                
;                                                                                                          
                                                                                                           
filename ft15f001 "d:/htm/have.html";                                                                      
parmcards4;                                                                                                
<html><body style='font-family:arial'><style type="text/css">tr.head {                                     
background-color: #FFFFFF;                                                                                 
font-weight: bold;                                                                                         
}                                                                                                          
tr.even {background-color: #EEEEEE}                                                                        
tr.odd {background-color: #FFFFFF}</style><table><tr class="head">                                         
<td>station_no</td><td>ts_path</td><td>parametertype_name</td></tr>                                        
<tr class="even"><td>23349</td><td>17/23349/path1</td><td>WL</td></tr>                                     
<tr class="odd"><td>23349</td><td>17/23349/path2</td><td>WL</td></tr>                                      
<tr class="even"><td>23349</td><td>17/23349/path3</td><td>WL</td></tr>                                     
<tr class="odd"><td>23349</td><td>17/23349/path4</td><td>WL</td></tr>                                      
<tr><th colspan="3"><img src="images/path.gif" align="right"/>                                             
</th></tr>                                                                                                 
</table>                                                                                                   
</body></html>                                                                                             
;;;;                                                                                                       
run;quit;                                                                                                  
                                                                                                           
d:/htm/have.html                                                                                           
                                                                                                           
   <html><body style='font-family:arial'><style type="text/css">tr.head {                                  
   background-color: #FFFFFF;                                                                              
   font-weight: bold;                                                                                      
   }                                                                                                       
   tr.even {background-color: #EEEEEE}                                                                     
   tr.odd {background-color: #FFFFFF}</style><table><tr class="head">                                      
   <td>station_no</td><td>ts_path</td><td>parametertype_name</td></tr>                                     
   <tr class="even"><td>23349</td><td>17/23349/path1</td><td>WL</td></tr>                                  
   <tr class="odd"><td>23349</td><td>17/23349/path2</td><td>WL</td></tr>                                   
   <tr class="even"><td>23349</td><td>17/23349/path3</td><td>WL</td></tr>                                  
   <tr class="odd"><td>23349</td><td>17/23349/path4</td><td>WL</td></tr>                                   
   <tr><th colspan="3"><img src="images/path.gif" align="right"/>                                          
   </th></tr>                                                                                              
   </table>                                                                                                
   </body></html>                                                                                          
                                                                                                           
*            _               _                                                                             
  ___  _   _| |_ _ __  _   _| |_ ___                                                                       
 / _ \| | | | __| '_ \| | | | __/ __|                                                                      
| (_) | |_| | |_| |_) | |_| | |_\__ \                                                                      
 \___/ \__,_|\__| .__/ \__,_|\__|___/                                                                      
                |_|                                                                                        
  __ _     ___  __ _ ___                                                                                   
 / _` |   / __|/ _` / __|                                                                                  
| (_| |_  \__ \ (_| \__ \                                                                                  
 \__,_(_) |___/\__,_|___/                                                                                  
;                                                                                                          
                                                                                                           
WORK.WANT_SAS total obs=4                                                                                  
                                                                                                           
  STATION_                      PARAMETERTYPE_                                                             
     NO          TS_PATH             NAME                                                                  
                                                                                                           
   23349      17/23349/path1          WL                                                                   
   23349      17/23349/path2          WL                                                                   
   23349      17/23349/path3          WL                                                                   
   23349      17/23349/path4          WL                                                                   
                                                                                                           
                                                                                                           
  Variables in Creation Order                                                                              
                                                                                                           
 Variable              Type    Len                                                                         
                                                                                                           
 STATION_NO            Char    200                                                                         
 TS_PATH               Char    200                                                                         
 PARAMETERTYPE_NAME    Char    200                                                                         
                                                                                                           
*_        ____                                                                                             
| |__    |  _ \                                                                                            
| '_ \   | |_) |                                                                                           
| |_) |  |  _ <                                                                                            
|_.__(_) |_| \_\                                                                                           
                                                                                                           
;                                                                                                          
                                                                                                           
WORK.WANT total obs=6                                                                                      
                                                                                                           
  X1            X2                X3                                                                       
                                                                                                           
  station_no    ts_path           parametertype_name                                                       
  23349         17/23349/path1    WL                                                                       
  23349         17/23349/path2    WL                                                                       
  23349         17/23349/path3    WL                                                                       
  23349         17/23349/path4    WL                                                                       
                                                                                                           
                                                                                                           
Variables in Creation Order                                                                                
                                                                                                           
  Variable    Type    Len                                                                                  
                                                                                                           
  X1          Char     10                                                                                  
  X2          Char     14                                                                                  
  X3          Char     18                                                                                  
                                                                                                           
*          _       _   _                                                                                   
 ___  ___ | |_   _| |_(_) ___  _ __  ___                                                                   
/ __|/ _ \| | | | | __| |/ _ \| '_ \/ __|                                                                  
\__ \ (_) | | |_| | |_| | (_) | | | \__ \                                                                  
|___/\___/|_|\__,_|\__|_|\___/|_| |_|___/                                                                  
  __ _     ___  __ _ ___                                                                                   
 / _` |   / __|/ _` / __|                                                                                  
| (_| |_  \__ \ (_| \__ \                                                                                  
 \__,_(_) |___/\__,_|___/                                                                                  
                                                                                                           
;                                                                                                          
                                                                                                           
                                                                                                           
filename src "d:/htm/have.html";                                                                           
data want_sas;                                                                                             
    infile src length=len lrecl=32767;                                                                     
    input line $varying32767. len;                                                                         
                                                                                                           
    line        = strip(line);                                                                             
                                                                                                           
    /* PERL regular expression to remove HTML tags.                                                        
       compbl() changes multiple spaces into one space                                                     
    */                                                                                                     
    line_notags = compbl(prxchange('s/<[^>]*>/ /', -1, line));                                             
                                                                                                           
    if(len>0);                                                                                             
                                                                                                           
    /* Do not reset these values at the start of each row */                                               
    retain flag_table_header lag_flag_table_header;                                                        
                                                                                                           
    /* Set a flag that we've encountered the table header */                                               
    if(index(line, 'station_no')) then flag_table_header = 1;                                              
                                                                                                           
    /* Check if we are currently under the table header */                                                 
    lag_flag_table_header = lag(flag_table_header);                                                        
                                                                                                           
    /* If we're under the table header and the line isn't missing after removing tags,                     
       grab what we need and output. Do not output if anything else is missing.                            
    */                                                                                                     
    if(lag_flag_table_header AND NOT missing(line_notags) ) then do;                                       
        station_no         = scan(line_notags, 1, ' ');                                                    
        ts_path            = scan(line_notags, 2, ' ');                                                    
        parametertype_name = scan(line_notags, 3, ' ');                                                    
                                                                                                           
        output;                                                                                            
    end;                                                                                                   
                                                                                                           
    keep station_no ts_path parametertype_name;                                                            
run;                                                                                                       
                                                                                                           
*_        ____                                                                                             
| |__    |  _ \                                                                                            
| '_ \   | |_) |                                                                                           
| |_) |  |  _ <                                                                                            
|_.__(_) |_| \_\                                                                                           
                                                                                                           
;                                                                                                          
                                                                                                           
%utl_submit_r64('                                                                                          
library(rvest);                                                                                            
library(dplyr);                                                                                            
library(SASxport);                                                                                         
fyl <- "d:/htm/have.html";                                                                                 
want <- fyl %>%                                                                                            
  read_html() %>%                                                                                          
  html_table() %>%                                                                                         
  as.data.frame();                                                                                         
write.xport(want,file="d:/xpt/want.xpt");                                                                  
');                                                                                                        
                                                                                                           
libname xpt xport "d:/xpt/want.xpt";                                                                       
data want;                                                                                                 
  set xpt.want;                                                                                            
run;quit;                                                                                                  
libname xpt clear;                                                                                         
                                                                                                           
                                                                                                           

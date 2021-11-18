unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, ComCtrls;

type
  TMenushka = class(TForm)
    Tst1: TButton;
    Tst2: TButton;
    tst3: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    rg1: TRadioGroup;
    dobavka: TButton;
    vybor: TButton;
    edt1: TEdit;
    lbl3: TLabel;
    Rezult: TButton;
    pb1: TProgressBar;
    tmr1: TTimer;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Tst1Click(Sender: TObject);
    procedure Tst2Click(Sender: TObject);
    procedure tst3Click(Sender: TObject);
    procedure dobavkaClick(Sender: TObject);
    procedure vyborClick(Sender: TObject);
    procedure RezultClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menushka: TMenushka;
  f,re:Text;
  t,v,res:string;
  user:string;
  j,c,i:Integer;
  b:Integer=0;
  rg1:array of string;
  fuser,suser: array [1..3] of integer;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}
procedure TMenushka.Tst1Click(Sender: TObject);
begin
  if b=1 then begin if (((lbl3.Caption='Гость') and (fuser[1]<>1)) or (suser[1]<>1)) then begin Menushka.Hide;
                                                                                                AssignFile(f,'Тесты\Тест 1\Инструкция.txt');
                                                                                                Reset(f);
                                                                                                Readln(f,t);
                                                                                                Test1.lbl4.Caption:=t;
                                                                                                Test1.show;end
                    else showmessage('Вы уже проходили этот тест');end
  else showmessage('Нужно выбрать пользователя')end;

procedure TMenushka.Tst2Click(Sender: TObject);
begin
if b=1 then begin if (((lbl3.Caption='Гость') and (fuser[2]<>1)) or (suser[2]<>1)) then begin Menushka.Hide;
                                                                                              AssignFile(f,'Тесты\Тест 2\Инструкция.txt');
                                                                                              Reset(f);
                                                                                              Readln(f,t);
                                                                                              Test2.lbl4.Caption:=t;
                                                                                              Test2.show;end
                  else showmessage('Вы уже проходили этот тест');end
else showmessage('Нужно выбрать пользователя')end;
procedure TMenushka.tst3Click(Sender: TObject);
begin
if b=1 then begin if (((lbl3.Caption='Гость') and (fuser[3]<>1)) or (suser[3]<>1)) then begin Menushka.Hide;
                                                                                                AssignFile(f,'Тесты\Тест 3\Инструкция.txt');
                                                                                                Reset(f);
                                                                                                Readln(f,t);
                                                                                                Test3.lbl3.Caption:=t;
                                                                                                Test3.show;end
                  else showmessage('Вы уже проходили этот тест');end
else showmessage('Нужно выбрать пользователя')end;

procedure TMenushka.dobavkaClick(Sender: TObject);
begin
if rg1.Items.Count<>2 then begin
if edt1.Text<>'' then begin v:=edt1.Text;
                            rg1.Items.Add(v);
                            edt1.Text:='';
                            CreateDir('Userы/'+v);end
else showmessage('Вы не ввели новое имя пользователя');end
else showmessage('Достигнуто максимальное количество пользователей')end;

procedure TMenushka.vyborClick(Sender: TObject);
begin
if rg1.ItemIndex<>-1 then begin for j:=0 to rg1.Items.Count-1 do if rg1.ItemIndex=j then begin t:=rg1.Items[j];
                                                                                               lbl3.Caption:=t;
                                                                                               t:='';
                                                                                               rg1.ItemIndex:=-1;
                                                                                               b:=1;end;
                                                                                               rg1.Enabled:=false;
                                                                                               dobavka.Hide;end;end;

procedure TMenushka.RezultClick(Sender: TObject);
begin
menushka.Hide;
Rezults.show;
rezults.strngrd1.Cells[0,0]:='Пользователи\Тесты';
rezults.strngrd1.Cells[1,0]:='Направленность';
rezults.strngrd1.Cells[2,0]:='Темперамент';
rezults.strngrd1.Cells[3,0]:='Тип личности';
if (rezults.strngrd1.RowCount<>rg1.Items.Count+1) then rezults.strngrd1.RowCount:=rg1.Items.Count+1;
for j:=0 to rg1.Items.Count-1 do begin user:=rg1.Items[j];
                                       rezults.strngrd1.Cells[0,j+1]:=user;end;
if fileexists('Userы/Гость/Тест 1.txt') then begin assignfile(re,'Userы/Гость/Тест 1.txt');
                                                   reset(re);
                                                   read(re,res);
                                                   rezults.strngrd1.Cells[1,1]:=res;end
else rezults.strngrd1.Cells[1,1]:='Отсутствует';
if fileexists('Userы/Гость/Тест 2.txt') then begin assignfile(re,'Userы/Гость/Тест 2.txt');
                                                   reset(re);
                                                   read(re,res);
                                                   rezults.strngrd1.Cells[2,1]:=res;end
else rezults.strngrd1.Cells[2,1]:='Отсутствует';
if fileexists('Userы/Гость/Тест 3.txt') then begin assignfile(re,'Userы/Гость/Тест 3.txt');
                                                   reset(re);
                                                   read(re,res);
                                                   rezults.strngrd1.Cells[3,1]:=res;end
else rezults.strngrd1.Cells[3,1]:='Отсутствует';
for i:=1 to rg1.items.count-1 do begin for j:=1 to rg1.Items.Count-1 do begin user:=rg1.Items[j];
                                                                              if fileexists('Userы/'+user+'/Тест 1.txt') then begin assignfile(re,'Userы/'+user+'/Тест 1.txt');
                                                                                                                                  reset(re);
                                                                                                                                  read(re,res);
                                                                                                                                  rezults.strngrd1.Cells[i,j+1]:=res;end
                                                                              else rezults.strngrd1.Cells[i,j+1]:='Отсутствует';
                                                                              if fileexists('Userы/'+user+'/Тест 2.txt') then begin assignfile(re,'Userы/'+user+'/Тест 2.txt');
                                                                                                                                  reset(re);
                                                                                                                                  read(re,res);
                                                                                                                                  rezults.strngrd1.Cells[i+1,j+1]:=res;end
                                                                              else rezults.strngrd1.Cells[i+1,j+1]:='Отсутствует';
                                                                              if fileexists('Userы/'+user+'/Тест 3.txt') then begin assignfile(re,'Userы/'+user+'/Тест 3.txt');
                                                                                                                                  reset(re);
                                                                                                                                  read(re,res);
                                                                                                                                  rezults.strngrd1.Cells[i+2,j+1]:=res;end
                                                                              else rezults.strngrd1.Cells[i+2,j+1]:='Отсутствует';
end;
end;end;
procedure TMenushka.tmr1Timer(Sender: TObject);
begin
pb1.Position:=pb1.Position+20;
if pb1.Position=pb1.Max then begin dobavka.Show;
                                   N1.Visible:=true;
                                   N2.visible:=true;
                                   edt1.Show;
                                   lbl1.Show;
                                   lbl2.Show;
                                   lbl3.Show;
                                   rezult.Show;
                                   rg1.show;
                                   tst1.Show;
                                   tst2.Show;
                                   tst3.show;
                                   vybor.show;
                                   CreateDir('Userы/Гость');
                                   tmr1.Enabled:=false;
                                   pb1.Hide;end;
end;

procedure TMenushka.N1Click(Sender: TObject);
begin
Menushka.hide;
info.lbl2.Show;
Info.show;
end;

procedure TMenushka.N2Click(Sender: TObject);
begin
Menushka.Hide;
Info.lbl1.Show;
info.show;
end;

end.


unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TTest3 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    Nachat: TButton;
    Konec: TButton;
    nazat: TButton;
    vpered: TButton;
    rb1: TRadioButton;
    rb2: TRadioButton;
    lbl1: TLabel;
    img1: TImage;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure N1Click(Sender: TObject);
    procedure NachatClick(Sender: TObject);
    procedure vperedClick(Sender: TObject);
    procedure nazatClick(Sender: TObject);
    procedure KonecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Test3: TTest3;
  f,t:Text;
  i,j,rez,c:Integer;
  otv,ot:string;
  mas:array[1..4] of Integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TTest3.N1Click(Sender: TObject);
begin Test3.Close;
      Menushka.Show;end;

procedure TTest3.NachatClick(Sender: TObject);
begin lbl1.Show;
      rb1.Show;
      lbl3.Hide;
      rb2.Show;
      vpered.Show;
      i:=1;
      AssignFile(f,'Тесты\Тест 3\Вопросы\'+inttostr(i)+'.txt');
      Reset(f);
      Readln(f,otv);
      lbl1.Caption:=otv;
      Readln(f,otv);
      rb1.Caption:=otv;
      Readln(f,otv);
      rb2.Caption:=otv;
      Nachat.Visible:=False;end;

procedure TTest3.vperedClick(Sender: TObject);
begin c:=0;
      if rb1.Checked then begin case i of 1: mas[i]:=1000;
                                          2: mas[i]:=100;
                                          3: mas[i]:=10;end;
                                rb1.Checked:=False;
                                c:=1;end;
      if rb2.Checked then begin case i of 1: mas[i]:=2000;
                                          2: mas[i]:=200;
                                          3: mas[i]:=20;end;
                                rb2.Checked:=False;
                                c:=1;end;
if c=1 then begin i:=i+1;
                  nazat.Show;
if i<4 then begin AssignFile(f,'Тесты\Тест 3\Вопросы\'+InttoStr(i)+'.txt');
                  Reset(f);
                  Readln(f,otv);
                  lbl1.Caption:=otv;
                  Readln(f,otv);
                  rb1.Caption:=otv;
                  Readln(f,otv);
                  rb2.Caption:=otv;end;
if i=4 then begin AssignFile(f,'Тесты\Тест 3\Вопросы\'+inttostr(i)+'.txt');
                  Reset(f);
                  Readln(f,otv);
                  lbl1.Caption:=otv;
                  Readln(f,otv);
                  rb1.Caption:=otv;
                  Readln(f,otv);
                  rb2.Caption:=otv;
                  vpered.visible:=false;
                  Konec.visible:=true;end;
end
else showmessage('Нужно выбрать хотя бы один вариант');end;

procedure TTest3.nazatClick(Sender: TObject);
begin i:=i-1;
  Konec.Hide;
  vpered.Show;
  if i=1 then nazat.Hide;
  AssignFile(f,'Тесты\Тест 3\Вопросы\'+InttoStr(i)+'.txt');
  Reset(f);
  Readln(f,otv);
  lbl1.Caption:=otv;
  Readln(f,otv);
  rb1.Caption:=otv;
  Readln(f,otv);
  rb2.Caption:=otv; end;

procedure TTest3.KonecClick(Sender: TObject);
begin c:=0;
if rb1.checked then begin mas[4]:=1;
                          c:=1;end;
if rb2.Checked then begin mas[4]:=2;
                          c:=1;end;
if c=1 then begin
rb1.Hide;
rb2.Hide;
nazat.Hide;
Konec.Hide;
lbl1.Hide;
lbl2.Show;
rez:=0;
for i:=1 to 4 do rez:=rez+mas[i];
user:=menushka.lbl3.Caption;
if user='Гость' then fuser[3]:=1
else suser[3]:=1;
AssignFile(t,'Userы\'+user+'\Тест 3.txt');
Rewrite(t);
case rez of 1111: begin AssignFile(f,'Тесты\Тест 3\Результаты\максим горький.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Максим Горький" или Попечитель, Прирождённый организатор');end;
            2222: begin AssignFile(f,'Тесты\Тест 3\Результаты\гексли.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Гексли" или Журналист');end;
            1212: begin AssignFile(f,'Тесты\Тест 3\Результаты\гюго.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Гюго" или Продавец, Друг всех и каждого');end;
            2212: begin AssignFile(f,'Тесты\Тест 3\Результаты\наполеон.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Наполеон" или Политик');end;
            1112: begin AssignFile(f,'Тесты\Тест 3\Результаты\штирлиц.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Штирлиц" или "Шерлок Холмс", Администратор, Прирождённый руководитель');end;
            2221: begin AssignFile(f,'Тесты\Тест 3\Результаты\есенин.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Есенин" или Искатель');end;
            2121: begin AssignFile(f,'Тесты\Тест 3\Результаты\бальзак.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Бальзак" или Созидатель, Осмыслитель жизни');end;
            2122: begin AssignFile(f,'Тесты\Тест 3\Результаты\дон кихот.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Дон-кихот" или Новатор');end;
            1122: begin AssignFile(f,'Тесты\Тест 3\Результаты\джек лондон.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Джек Лондон" или Бизнесмен, Прирождённый лидер');end;
            2211: begin AssignFile(f,'Тесты\Тест 3\Результаты\дюма.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Дюма" или Художник');end;
            1221: begin AssignFile(f,'Тесты\Тест 3\Результаты\достоевский.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Достоевский" или Писатель, Вдохновляющий лидер');end;
            1121: begin AssignFile(f,'Тесты\Тест 3\Результаты\робеспьер.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Робеспьер" или Учёный');end;
            1222: begin AssignFile(f,'Тесты\Тест 3\Результаты\гамлет.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Гамлет" или Актёр');end;
            2111: begin AssignFile(f,'Тесты\Тест 3\Результаты\габен.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Габен" или Мастер');end;
            2112: begin AssignFile(f,'Тесты\Тест 3\Результаты\жуков.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Жуков" или "Македонский", Поощритель');end;
            1211: begin AssignFile(f,'Тесты\Тест 3\Результаты\драйзер.txt');
                        Reset(f);
                        Readln(f,otv);
                        lbl2.Caption:=otv;
                        Writeln(t,'"Драйзер" или Охранитель, Преданный делу');end;end;
img1.Show;
end
else showmessage('Нужно выбрать хотя бы один вариант');
closefile(t);end;
end.

unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, CheckLst;

type
  TTest2 = class(TForm)
    START: TButton;
    FINISH: TButton;
    VPERED: TButton;
    NAZAD: TButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    lbl1: TLabel;
    chklst1: TCheckListBox;
    Sangv: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    Flegm: TLabel;
    Capti: TLabel;
    lst1: TListBox;
    Melan: TLabel;
    Holer: TLabel;
    procedure N1Click(Sender: TObject);
    procedure STARTClick(Sender: TObject);
    procedure VPEREDClick(Sender: TObject);
    procedure NAZADClick(Sender: TObject);
    procedure FINISHClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Test2: TTest2;
  i,j,san,fl,mel,hol,san_c,fl_c,mel_c,hol_c,all,c:Integer;
  pr_s,pr_f,pr_m,pr_h:Real;
  inf:string;
  chklst1:array of string;
  f,t:Text;

implementation

uses Unit1;

{$R *.dfm}

procedure TTest2.N1Click(Sender: TObject);
begin
Test2.Close;
Menushka.show;
end;

procedure TTest2.STARTClick(Sender: TObject);
begin i:=1;
      san:=0;
      fl:=0;
      mel:=0;
      hol:=0;
      lbl4.Hide;
      lbl3.Hide;
      chklst1.Show;
      lbl1.Show;
      chklst1.Items.LoadFromFile('Тесты\Тест 2\Вопросы\'+IntToStr(i)+'.txt');
      START.Hide;
      VPERED.Show;end;

procedure TTest2.VPEREDClick(Sender: TObject);
begin
c:=0;
for j:=0 to chklst1.Items.Count-1 do if chklst1.Checked[j] then begin case i of 1:begin fl:=fl+1;
                                                                                        fl_c:=fl_c+1;end;
                                                                                2:begin mel:=mel+1;
                                                                                        mel_c:=mel_c+1;end;
                                                                                3:begin hol:=hol+1;
                                                                                        hol_c:=hol_c+1;end;end;
                                                                c:=1;end;
if c=1 then begin i:=i+1;
                  NAZAD.Show;
                  chklst1.Items.LoadFromFile('Тесты\Тест 2\Вопросы\'+IntToStr(i)+'.txt');
                  if i=4 then begin FINISH.Show;
                                    VPERED.Hide;end;end
else showmessage('Нужно выбрать хотя бы один вариант');end;

procedure TTest2.NAZADClick(Sender: TObject);
begin i:=i-1;
      if i=1 then NAZAD.Hide;
      chklst1.Items.LoadFromFile('Тесты\Тест 2\Вопросы\'+IntToStr(i)+'.txt');
      VPERED.Show;
      FINISH.Hide;end;

procedure TTest2.FINISHClick(Sender: TObject);
begin c:=0;
      for j:=0 to chklst1.Items.Count-1 do if chklst1.Checked[j] then begin san:=san+1;
                                                                            san_c:=san_c+1;
                                                                            c:=1;end;
      if c=1 then begin FINISH.Hide;
                        chklst1.Hide;
                        lbl1.Hide;
                        NAZAD.Hide;
                        lbl3.Show;
                        lst1.Show;
                        melan.Show;
                        sangv.Show;
                        holer.Show;
                        flegm.Show;
                        capti.Show;
                        all:=san+fl+mel+hol;
                        pr_s:=(san/all)*100;
                        pr_f:=(fl/all)*100;
                        pr_m:=(mel/all)*100;
                        pr_h:=(hol/all)*100;
                        AssignFile(f,'Тесты\Тест 2\Результаты\сангвиник.txt');
                        Reset(f);
                        Readln(f,inf);
                        sangv.Caption:=inf;
                        AssignFile(f,'Тесты\Тест 2\Результаты\флегматик.txt');
                        Reset(f);
                        Readln(f,inf);
                        flegm.Caption:=inf;
                        AssignFile(f,'Тесты\Тест 2\Результаты\меланхолик.txt');
                        Reset(f);
                        Readln(f,inf);
                        melan.Caption:=inf;
                        AssignFile(f,'Тесты\Тест 2\Результаты\холерик.txt');
                        Reset(f);
                        Readln(f,inf);
                        holer.Caption:=inf;
                        lst1.Items.Add('Сангвиник - '+floattostr(round(pr_s))+' %');
                        lst1.Items.Add('Флегматик - '+floattostr(round(pr_f))+' %');
                        lst1.Items.Add('Меланхолик - '+floattostr(round(pr_m))+' %');
                        lst1.Items.Add('Холерик - '+floattostr(round(pr_h))+' %');
                        user:=menushka.lbl3.Caption;
                        if user='Гость' then fuser[2]:=1
                        else suser[2]:=1;
                        if (pr_s>pr_f) and (pr_s>pr_m) and (pr_s>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладает темперамент сангвиника';
                                                                                  writeln(t,'Сангвиник');end;
                        if (pr_f>pr_s) and (pr_f>pr_m) and (pr_f>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладает темперамент флегматика';
                                                                                  writeln(t,'Флегматик');end;
                        if (pr_m>pr_s) and (pr_m>pr_f) and (pr_m>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладает темперамент меланхолика';
                                                                                  writeln(t,'Меланхолик');end;
                        if (pr_h>pr_s) and (pr_h>pr_m) and (pr_h>pr_f) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладает темперамент холерика';
                                                                                  writeln(t,'Холерик');end;
                        if (pr_s=pr_f) and (pr_s>pr_m) and (pr_s>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты сангвиника и флегматика';
                                                                                  writeln(t,'Сангвиник и флегматик'); end;
                        if (pr_s=pr_m) and (pr_s>pr_f) and (pr_s>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты сангвиника и меланхолика';
                                                                                  writeln(t,'Сангвиник и меланхолик'); end;
                        if (pr_s=pr_h) and (pr_s>pr_m) and (pr_s>pr_f) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты сангвиника и холерика';
                                                                                  writeln(t,'Сангвиник и холерик'); end;
                        if (pr_f=pr_m) and (pr_f>pr_s) and (pr_f>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты флегматика и меланхолика';
                                                                                  writeln(t,'Флегматик и меланхолик'); end;
                        if (pr_f=pr_h) and (pr_f>pr_s) and (pr_f>pr_m) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты флегматика и холерика';
                                                                                  writeln(t,'Флегматик и холерик'); end;
                        if (pr_m=pr_h) and (pr_m>pr_f) and (pr_m>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты холерика и меланхолика';
                                                                                  writeln(t,'Холерик и меланхолик'); end;
                        if (pr_s=pr_f) and (pr_m=pr_s) and (pr_f>pr_h) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты сангвиника, меланхолика и флегматика';
                                                                                  writeln(t,'Сангвиник, меланхолик и флегматик'); end;
                        if (pr_s=pr_m) and (pr_m=pr_h) and (pr_s>pr_f) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты холерика, меланхолика и сангвиника';
                                                                                  writeln(t,'Холерик, меланхолик и сангвиник'); end;
                        if (pr_s=pr_f) and (pr_f=pr_h) and (pr_s>pr_m) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты сангвиника, флегматика и холерика';
                                                                                  writeln(t,'Сангвиник, флегматик и холерик'); end;
                        if (pr_m=pr_f) and (pr_f=pr_h) and (pr_m>pr_s) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают темпераменты меланхолика, флегматика и холерика';
                                                                                  writeln(t,'Меланхолик, флегматик и холерик'); end;
                        if (pr_f=pr_m) and (pr_f=pr_h) and (pr_m=pr_s) then begin AssignFile(t,'Userы/'+user+'/Тест 2.txt');
                                                                                  Rewrite(t);
                                                                                  lbl3.Caption:='У вас преобладают все темпераменты';
                                                                                  writeln(t,'Меланхолик, флегматик, холерик и сангвиник'); end;
                        end
else showmessage('Нужно выбрать хотя бы один вариант');
closefile(t);end;
end.

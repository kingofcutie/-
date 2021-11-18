unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TInfo = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    mm1: TMainMenu;
    N1: TMenuItem;
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Info: TInfo;

implementation

uses Unit1;

{$R *.dfm}

procedure TInfo.N1Click(Sender: TObject);
begin
Info.Close;
lbl2.Hide;
lbl1.Hide;
Menushka.show;
end;

end.

unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Menus;

type
  TRezults = class(TForm)
    lbl1: TLabel;
    strngrd1: TStringGrid;
    mm1: TMainMenu;
    N1: TMenuItem;
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rezults: TRezults;

implementation

uses Unit1;

{$R *.dfm}


procedure TRezults.N1Click(Sender: TObject);
begin
rezults.Close;
menushka.show;
end;


end.

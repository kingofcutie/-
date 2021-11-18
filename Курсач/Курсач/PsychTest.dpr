program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Menushka},
  Unit2 in 'Unit2.pas' {Test1},
  Unit3 in 'Unit3.pas' {Test2},
  Unit4 in 'Unit4.pas' {Test3},
  Unit5 in 'Unit5.pas' {Rezults},
  Unit6 in 'Unit6.pas' {Info};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenushka, Menushka);
  Application.CreateForm(TTest1, Test1);
  Application.CreateForm(TTest2, Test2);
  Application.CreateForm(TTest3, Test3);
  Application.CreateForm(TRezults, Rezults);
  Application.CreateForm(TInfo, Info);
  Application.Run;
end.

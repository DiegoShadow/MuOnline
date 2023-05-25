Use MuOnline
Update character set CtlCode='32' where Name='NameOfYourCharacter'

#------------------------

select * from AccountCharacter
select * from Character
select * from MEMB_INFO

--update	Character
--set	CtlCode = 32

--update	MEMB_INFO
--set	AccountExpireDate = '2030-12-31 00:00:00',
--	AccountLevel = 3

declare @id varchar(10) = 'admcronux'; -- Nome do usuário
declare @nome varchar(10) = 'ADM-CRONUX'; -- Nome do personagem que será atualizado

update	AccountCharacter
set	GameID1 = @nome,
	GameIDC = @nome
where	id = @id;

update	Character
set	name = @nome
where	AccountID = @id;

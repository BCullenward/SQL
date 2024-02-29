begin tran


insert into MovieList (	
	RootDirectory
	,ParentDirectory
	,Directory
	,[FileName]
	,Extension
	,FileSize)
select 
	RootDirectoryName
	,ParentDirectoryName
	,DirectoryName
	,[FileName]
	,Extension
	,FileSize
from OPENROWSET(BULK 'C:\repos\MovieImport\MovieImport\jsondata\MovieListing.json', single_clob) as j 
cross apply openjson(BulkColumn) with 
(
 RootDirectoryName varchar(500)
 ,ParentDirectoryName varchar(500)
 ,DirectoryName varchar(500)
 ,[FileName] varchar(500)
 ,Extension varchar(10)
 ,FileSize bigint
) as movie


if @@rowcount > 99021  -- count from above query
begin
	rollback
	print 'rollback'
end
else
	commit



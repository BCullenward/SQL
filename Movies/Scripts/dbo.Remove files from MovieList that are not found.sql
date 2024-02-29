begin tran

delete ml 
from MovieList ml 
inner join MovieList_Removed mlr 
	on ml.RootDirectory = mlr.RootDirectory 
	and ml.ParentDirectory = mlr.ParentDirectory 
	and ml.Directory = mlr.Directory 
	and ml.[FileName] = mlr.[FileName] 


if @@rowcount > 12  /* count from above */
begin
	rollback
	print 'rollback'
end
else
	commit 

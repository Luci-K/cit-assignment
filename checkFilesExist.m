function checkFilesExist(fileList, context)
% checkFilesExist verifies each file in provided file list exists
% checkFilesExist(fileList) throws an error if any file does not exist
% checkFilesExistfileList, context) includes optional context info in error

if nargin < 2
    % if user passes less than 2 arguments, set context to empty string
    context = ''; 
end

for i = 1:length(fileList)
    if ~exist(fileList{i}, 'file')
        error('File "%s" was not created, %s', fileList{i}, context)
    end
end

fprintf('All files exist. %s\n', context)
end

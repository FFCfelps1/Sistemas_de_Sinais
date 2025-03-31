
```matlab
files = dir('*.mlx'); 
for k = 1:length(files)
    [~, name, ~] = fileparts(files(k).name);
    matlab.internal.liveeditor.openAndConvert(files(k).name, [name '.md']);
end
```

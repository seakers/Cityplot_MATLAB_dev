function [primaryAxes]=figurePlotAxes(figHandle)
if(strcmp('axes', get(figHandle,'type')))
    primaryAxes=figHandle;
    return
end

ax=findall(figHandle,'type', 'axes');
if(~isempty(ax))
    primaryAxes=ax(~ismember(get(ax,'Tag'),{'legend','colorbar'}));
else
    set(0, 'CurrentFigure', figHandle);
    primaryAxes=axes();
end
return

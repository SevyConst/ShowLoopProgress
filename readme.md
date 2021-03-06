## Readme

Иногда в матлабе всё же приходится писать for-циклы. Иногда эти циклы выполняются очень долго, и во время выполнения хочется знать, какой процент итераций уже был выполнен. 

Класс [ShowLoopProgress](https://github.com/SevyConst/ShowLoopProgress/blob/master/ShowLoopProgress.m) решает эту несложную проблему (если число итераций известно до начала цикла). Ниже приведен пример использования:

```matlab

% ...
% код Вашей программы
% ...

% конструктор класса ShowLoopProgress должен быть вызван до начала цикла.
% nIter - количество итераций в цикле.
% nSteps - количество "шагов", которые будут отражены в консоли, - например, если
% nSteps равно 5, то в процессе выполнения на консоль будет выведено: 
% 20%
% 40%
% 60%
% и т. д.
progress = ShowLoopProgress(nIter, nSteps);

for i = 1 : nIter  % тот самый медленный цикл
	
	% ...
	% код цикла
	% ...
	
    progress.show(i);  % вызов метода, чтобы отобразить строку.
end

% ...
% код Вашей программы
% ...


```
Например, если `nSteps` равно 50, то в процессе выполнения цикла на экран будет выведено 50 строк:

```matlab
2%
4%
6%
...
```

Конечно, лучше было бы не занимать столько места в консоли и просто перезаписывать одну строку. Но в матлабе сделать это малой кровью не получится - пришлось бы писать интерфейс.

Дописывать одну строку в консоли в принципе можно, но тогда не работает при варианте, если по середине цикла что-нибудь ещё выводится в консоль.

Способ с [ShowLoopProgress](https://github.com/SevyConst/ShowLoopProgress/blob/master/ShowLoopProgress.m) должен работать быстрее, чем вариант, состоящий из одной функции (не класс) - `show(nIter, nSteps, i)`, вызываемый на каждой итерации, если количество итераций очень велико.


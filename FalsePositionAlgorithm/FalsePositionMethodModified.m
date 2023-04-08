%Matlab falsa posicion

FuncionUsuario=input('Ingrese la funcion: ','s');
limiteInferior=input('Ingrese limite inferior : ');
limiteSuperior=input('Ingrese limite superior : ');
Error=input('Ingrese el error : '); 
x=limiteInferior;
FuncionLimiteInferior=eval(FuncionUsuario);
x=limiteSuperior;
FuncionLimiteSuperior=eval(FuncionUsuario);
while abs(limiteSuperior-limiteInferior)>Error
    b=(limiteSuperior*FuncionLimiteInferior-limiteInferior*FuncionLimiteSuperior)/(FuncionLimiteInferior-FuncionLimiteSuperior);
    x=b;
    Fb=eval(FuncionUsuario);
    if abs(FuncionLimiteSuperior)<Error
        break;
    else    
        if FuncionLimiteInferior*Fb<=0
            limiteSuperior=b;
            FuncionLimiteSuperior=Fb;
        else
            limiteInferior=b;
            FuncionLimiteInferior=Fb;
        end
    end
end
fprintf('\nLa raiz de la funcion es: %.4f',b);
    
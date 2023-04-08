% Maquina dispensadora de cafe

% Escribir el código en Matlab de una máquina dispensadora de café, que nos de la opción de seleccionar el 
% tipo de café (americano, capuchino o express) una vez seleccionado el tipo de café, que nos de la opción de 
% seleccionar el tamano del cafe, una vez seleccionado el tamano, que nos de la opción de: Sin azúcar, con azúcar 
% o azúcar de dieta, una vez hecho esto, que imprima la selección hecha y nos muestre el precio y que regrese al menú principal.
clear, clc;
exitLoop = false;
while exitLoop == false
    mensaje = ''; costo = 0;
    disp(' Bienvenido a la maquina dispensadora de cafe! ');
    disp(' Tamano | Chico | Mediano | Grande | ');
    disp(' Costo  |  30   |    35   |   40   | ');
    disp(' Todos los cafes llevan azucar. ');
    disp(' Sin azucar:         $5 de descuento. ');
    disp(' Azucar dietetica:   $5 extra.');
    
    tipo = str2double(input('\n Seleccione el tipo de Cafe: \n 1) Americano \n 2) Capuchino \n 3) Moka \n 4) Salir \n Opcion: ', 's'));
    if tipo == 1
        mensaje = append(mensaje, 'Seleccion: Cafe americano');
    elseif tipo == 2
        mensaje = append(mensaje, 'Seleccion: Cafe capuchino');
    elseif tipo == 3
        mensaje = append(mensaje, 'Seleccion: Cafe moka');
    else
        exitLoop = true;
        break
    end
    
    tamano = str2double(input('Seleccione el tamaño: \n 1) Chico \n 2) Mediano \n 3) Grande \n 4) Salir \n Opcion: ', 's'));
    if tamano == 1
        mensaje = append(mensaje, ' chico'); costo = 30;
    elseif tamano == 2
        mensaje = append(mensaje, ' mediano'); costo = 35;
    elseif tamano == 3
        mensaje = append(mensaje, ' grande'); costo = 40;
    else
        exitLoop = true;
        break
    end
    azucar = str2double(input('Seleccione el azucar: \n 1) Normal \n 2) Sin azucar \n 3) Azucar dietetica \n 4) Salir \n Opcion: ', 's'));
    if azucar == 1
        mensaje = append(mensaje, ' con azucar'); 
    elseif azucar == 2
        mensaje = append(mensaje, ' sin azucar'); costo = costo-5;
    elseif azucar == 3
        mensaje = append(mensaje, ' con azucar dietetica'); costo = costo+5;
    else
        exitLoop = true;
        break
    end
    
    mensaje = append(mensaje, '. Pasar a pagar : $', num2str(costo)); 
    disp(' ');
    disp(mensaje);
    disp(' ');
    disp('---------------------------------------------------------------');
    disp(' ');
        
end



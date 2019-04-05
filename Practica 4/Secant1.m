function outputValue = Secant1(f, a, b, tolerancia, errorfun, maxiter)
    % Ejercicio 2.
           
        i = 1;
        h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
        c = (a + b) / 2;
       
        while ~( abs( f(c) ) <= errorfun ) && ~( abs(h) <= tolerancia ) && i < maxiter && i < 4

            if abs(f(a)) > abs(f(b)) % Si f(a) es mayor que f(b) intercambiamos a por b, y b por a.
                bridgeVar = a; % Variable que usaremos de puente para intercambiar a y b dentro del bucle.
                a = b;
                b = bridgeVar;
            end
            
            h = ( f(a) * (b-a) ) / ( f(b) - f(a) );
            c = a - h;
            b = c;

            
            % Descomenta esto para ver los datos en detalle referente al resultado (ULTIMA ITERACION).
            % fprintf('| %1.0f | %.2f | %.2f | %.2f |    %.2f    | \n', i, a, c, b, h); 
            
            i = i + 1;
        end
        
        outputValue = c;
end

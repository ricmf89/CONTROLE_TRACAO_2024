if exist('out', 'var')
    sent_data = out.sent_data;
    received_data = squeeze(out.received_data);
    time = out.tout;

    % Converter dados enviados para ASCII
    sent_ascii = char(sent_data + 48);  % Adiciona 48 para obter o código ASCII correto
    
    % Converter dados recebidos de ASCII para numérico
    received_numeric = double(received_data) - 48;

    % Plotar dados enviados
    figure;
    plot(time, sent_data);
    title('Dados Enviados (Valor Numérico)');
    xlabel('Tempo (s)');
    ylabel('Valor');
    grid on;

    % Plotar dados recebidos
    figure;
    plot(time, received_numeric);
    title('Dados Recebidos (Convertidos de ASCII)');
    xlabel('Tempo (s)');
    ylabel('Valor');
    grid on;

    % Comparação de dados enviados e recebidos
    figure;
    plot(time, sent_data, 'b', time, received_numeric, 'r');
    title('Comparação: Dados Enviados vs. Recebidos');
    legend('Enviados', 'Recebidos');
    xlabel('Tempo (s)');
    ylabel('Valor');
    grid on;

    % Calcular e exibir estatísticas
    disp('Estatísticas:');
    disp(['Média dos dados enviados: ', num2str(mean(sent_data))]);
    disp(['Média dos dados recebidos: ', num2str(mean(received_numeric))]);
    disp(['Máximo dos dados enviados: ', num2str(max(sent_data))]);
    disp(['Máximo dos dados recebidos: ', num2str(max(received_numeric))]);
    disp(['Mínimo dos dados enviados: ', num2str(min(sent_data))]);
    disp(['Mínimo dos dados recebidos: ', num2str(min(received_numeric))]);

    % Calcular a diferença entre enviados e recebidos
    diff = sent_data - received_numeric;
    disp(['Erro médio (enviado - recebido): ', num2str(mean(diff))]);
    disp(['Erro máximo absoluto: ', num2str(max(abs(diff)))]);

    % Verificar correspondência
    matching = sum(sent_data == received_numeric);
    total = length(sent_data);
    disp(['Porcentagem de valores correspondentes: ', num2str(matching/total*100), '%']);
else
    disp('A estrutura out não está disponível no workspace.');
    disp('Por favor, verifique se a simulação foi executada corretamente.');
end
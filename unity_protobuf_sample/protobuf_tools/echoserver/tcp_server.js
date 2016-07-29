var net=require('net');
net.createServer(function(sock) {

    // ���ǻ��һ������ - �������Զ�����һ��socket����
    console.log('CONNECTED: ' +
        sock.remoteAddress + ':' + sock.remotePort);

    // Ϊ���socketʵ�����һ��"data"�¼�������
    sock.on('data', function(data) {
        console.log('DATA ' + sock.remoteAddress + ': ');
	console.log(data.length);
        // �ط������ݣ��ͻ��˽��յ����Է���˵�����d
        sock.write(data);
    });

    // Ϊ���socketʵ�����һ��"close"�¼�������
    sock.on('close', function(data) {
        console.log('CLOSED: ' +
            sock.remoteAddress + ' ' + sock.remotePort);
    });
}).listen(8989, "127.0.0.1");

console.log("server started.  127.0.0.1:8989");


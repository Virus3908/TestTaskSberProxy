echo "\nOk tests\n"

echo "Test ok 1: $(curl -s http://localhost:3500/test)"
echo "Test ok 2: $(curl -s http://localhost:3500/test)"
echo "Test ok 1: $(curl -s http://localhost:3500/test)"
echo "Test ok 2: $(curl -s http://localhost:3500/test)"

echo "\nDirect access try\n"

echo "Test direct 1: $(curl -s http://localhost:3445)"
echo "Test direct 2: $(curl -s http://localhost:3446)"

echo "\nError tests\n"

echo "Test Not found: $(curl -s http://localhost:3500)"
echo "Test Not found: $(curl -s http://localhost:3500/test123)"

echo "\nOk ssl tests\n"

echo "Test SSL ok: $(curl -s --cert client.crt --key client.key --cacert ssl/ca.crt https://localhost:3600/ssl)"

echo "\nError ssl tests\n"

echo "Test Not found: $(curl -s --cert client.crt --key client.key --cacert ssl/ca.crt https://localhost:3600)"
echo "Test Not found: $(curl -s --cert client.crt --key client.key --cacert ssl/ca.crt https://localhost:3600/ssl123)"

echo "Test Cert no cert: \n$(curl -s --cacert ssl/ca.crt https://localhost:3600)"
echo "Test Cert wrong: \n$(curl -s --cert client_same_ca.crt --key client_same_ca.key\
                                 --cacert ssl/ca.crt https://localhost:3600)"
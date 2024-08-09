const fs = require('fs');
const path = require('path');

test('index.html should contain "Hola Mundo!"', () => {
    const filePath = path.join(__dirname, '../index.html');
    const html = fs.readFileSync(filePath, 'utf8');
    expect(html).toContain('<h1>Hola Mundo!</h1>');
});

# mi-portafolio-devops

Proyecto inicial para aprender Cloud / DevOps. Contiene una app Node.js mínima, Dockerfile y pipeline básico de GitHub Actions.

Requisitos
- Node.js 18+
- Docker (opcional para probar la imagen)
- Git

Ejecutar local
1. Clonar el repo:
   git clone https://github.com/juancarloscj22/mi-portafolio-devops.git
   cd mi-portafolio-devops

2. Instalar dependencias:
   npm ci

3. Ejecutar:
   npm start
   Luego abrir http://localhost:3000

Construir imagen Docker
- docker build -t miportafolio-devops:latest .
- docker run -p 3000:3000 miportafolio-devops:latest

CI/CD
- El repo incluye .github/workflows/ci.yml que ejecuta tests y build en cada push a main.

Estructura
- index.js         -> servidor Node.js (HTTP)
- package.json
- Dockerfile
- .github/workflows/ci.yml

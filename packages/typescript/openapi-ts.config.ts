export default {
  input: '../../spec/openapi.json',
  output: {
    path: 'src/client',
    clean: true,
  },
  plugins: ['@hey-api/client-fetch', '@hey-api/typescript', '@hey-api/sdk'],
}

```
name: Deploy $HAM Token
on:
  push:
    branches:
      - main
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      - name: Install Solana CLI
        run: |
          sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
      - name: Configure Solana CLI
        run: |
          solana config set --rpc-url https://test.solana.com
      - name: Deploy $HAM Token
        run: |
          solana program create ham_token
          cd ham_token
          cargo build-bpf
          solana program deploy target/deploy/ham_token.so
          echo "HAM Token deployed successfully!"
```
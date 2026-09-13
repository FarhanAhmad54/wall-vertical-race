# Wall Vertical Race

A from-scratch, Quoridor-inspired vertical wall race built around a 9x9 board, authoritative Node.js/TypeScript WebSocket matches, and a LÖVE 2D client.

## Stack

- Client: LÖVE 2D + Lua 5.1/LuaJIT compatible modules
- Server: Node.js + TypeScript + WebSocket (`ws`)
- Persistence: PostgreSQL-ready SQL schema and repository interface
- Tests: Node test runner for pure rules/pathfinding/server logic
- Platform: adapter boundary for Poki and CrazyGames

## Local development

### Client

Install LÖVE 11.x. From the repository root:

```bash
love client
```

### Server

```bash
cd server
npm install
npm run dev
```

The WebSocket server listens on `ws://localhost:8080` by default.

### Tests

```bash
cd server
npm test
```

## Architecture

`client/src/rules` contains deterministic, rendering-independent match rules. The same concepts are implemented in `server/src/rules` so the server never trusts client state. The online server is authoritative for turns, clocks, walls, win state, and rating. The client sends actions and renders server snapshots.

## Controls

Desktop: click/tap cells to select a move, or click wall controls to place a two-segment wall. Arrow keys/WASD move the selection. `R` rotates wall orientation. `Esc` pauses.

Mobile: landscape layout with large touch targets.

## License

Project-specific assets and branding should be added under `client/assets`; the code is intentionally dependency-light and does not bundle proprietary game assets or SDKs.

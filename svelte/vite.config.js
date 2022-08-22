import { sveltekit } from '@sveltejs/kit/vite';

// eslint-disable-next-line @typescript-eslint/no-var-requires
const pkg = require('./package.json')

export default ({ command }) => ({
	plugins: [sveltekit()],
	ssr: command === 'build' && {
		external: Object.keys(pkg.dependencies),
		noExternal: true,
	},
})

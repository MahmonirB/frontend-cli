---
to: <%=package%>/src/vite-env.d.ts
---
/// <reference types="vite-plugin-svgr/client" />

declare module "*.svg" {
	import * as React from "react";

	const ReactComponent: React.FunctionComponent<React.SVGProps<SVGSVGElement> & { title?: string }
	>;

	export default ReactComponent;
}
---
title: Development Kits
description: "Introducing dAppServer: Decentralized Data Management for PWAs"

---

- [API Explorer](https://dappserver.github.io/server)

## TypeScript

### Angular

- [npm](https://www.npmjs.com/package/@lethean/api-angular) `npm i @lethean/api-angular`
- [GitHub](https://github.com/dAppServer/server-sdk-typescript-angular)

#### Module Install
```typescript
// without configuring providers
import { serverSDKApiModule } from '@lethean/api-angular';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
    imports: [
        serverSDKApiModule,
        HttpClientModule
    ],
    declarations: [ AppComponent ],
    providers: [],
    bootstrap: [ AppComponent ]
})
export class AppModule {}
```
#### Standalone
```typescript
import { Component } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { serverSDKApiModule, SystemService } from '@lethean/api-angular';
import { HttpClientModule } from '@angular/common/http';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, serverSDKApiModule, HttpClientModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'dappui';

  constructor(private systemService: SystemService) {
    this.systemService.checkServer().subscribe(data => {
      console.log(data);
    });
  }
}
```
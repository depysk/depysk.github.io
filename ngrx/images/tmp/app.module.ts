import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import { AppComponent } from './app.component';
import {FormsModule} from '@angular/forms';
import {StoreModule} from '@ngrx/store';
import {userReducer} from './app.store';
import {StoreDevtoolsModule} from '@ngrx/store-devtools';
import {environment} from '../environments/environment';
import {APP_CONFIG} from './app-config';
import {UriBuilderService} from './uri-builder.service';
import {EffectsModule} from '@ngrx/effects';
import {AppEffects} from './app.effects';
import {HttpClientModule} from '@angular/common/http';


@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    StoreModule.forRoot({users: userReducer}),
    !environment.production ? StoreDevtoolsModule.instrument({ maxAge: 50 }) : [],
    EffectsModule.forRoot([AppEffects])
  ],
  providers: [
    {provide: APP_CONFIG, useValue: environment.config},
    UriBuilderService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

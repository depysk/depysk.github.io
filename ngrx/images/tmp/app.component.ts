import {Component, OnInit} from '@angular/core';
import {User} from './user';
import {Store} from '@ngrx/store';
import {AddUserAction, AppState, getUsers, LoadUsersAction, SaveUsersAction} from './app.store';
import {Observable} from 'rxjs/Observable';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})
export class AppComponent implements OnInit {

  users: Observable<User[]>;

  constructor(private store: Store<AppState>) {}

  ngOnInit() {
    this.users = this.store.select(getUsers);
  }

  onSubmit(user: User) {
    this.store.dispatch(new AddUserAction(user));
  }

  onLoad() {
    this.store.dispatch(new LoadUsersAction());
  }

  onSave() {
    this.store.dispatch(new SaveUsersAction());
  }
}

import {User} from './user';
import {Action, createSelector} from '@ngrx/store';

/** AppState **/
export interface AppState {
  users: UsersState;
}
export interface UsersState {
  items: User[];
}

// state slices
const selectUsersState = (appState: AppState) => appState.users;
const selectUsersItems = (state: UsersState) => state.items;
export const getUsers = createSelector( selectUsersState, selectUsersItems);


/** Actions **/
export const ADD_USER = 'ADD_USER';
export const LOAD_USERS = 'LOAD_USERS';
export const LOAD_USERS_COMPLETED = 'LOAD_USERS_COMPLETED';
export const SAVE_USERS = 'LOAD_USERS';

export class AddUserAction implements Action {
  readonly type: string = ADD_USER;
  constructor(public payload: User) {}
}
export class LoadUsersAction implements Action {
  readonly type: string = LOAD_USERS;
}
export class LoadUsersActionCompleted implements Action {
  readonly type: string = LOAD_USERS_COMPLETED;
  constructor(public payload: User[]) {}
}
export class SaveUsersAction implements Action {
  readonly type: string = LOAD_USERS;
}
/** reducer **/
const initialState: UsersState = {
  items: []
};
export function userReducer(state: UsersState = initialState, action: AddUserAction) {
  switch (action.type) {
    case ADD_USER :
      return {
        ...state,
        items : [...state.items, action.payload]
      };
    case LOAD_USERS_COMPLETED :
      return {
        ...state,
        items : action.payload
      };
    default:
      return state;
  }
}

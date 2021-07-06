import { combineReducers } from "redux";
import login from "./login";

const reducers = combineReducers({
    loggedInUser: login,
});

export default reducers;
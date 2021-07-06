import React, { Component } from 'react'
import { __SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED } from 'react-dom'

const UserAPI = "http://localhost:3001/users"

class Talents extends Component {

    componentDidMount = () => {
        // Let's fetch logged in person's id
        fetch(UserAPI, {
            method: "GET",
            headers: {
                Authorization: `Bearer ${localStorage.token}`
            }
        })
            .then(res => res.json())
            // .then(res => {
              
            //     const userIndex = res.map(elem => elem.id).findIndex(elem => elem === localStorage.userID)
            //     const userObj = res[userIndex]

            //     console.log(userIndex,userObj)
            // })
    }


    render () {

        return (
            <div>
                Talents page
            </div>
        )
    }
}

export default Talents
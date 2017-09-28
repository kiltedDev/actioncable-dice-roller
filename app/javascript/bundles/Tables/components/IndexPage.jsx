import React, {Component} from 'react';
import { Link } from 'react-router'

class IndexPage extends Component {
  render() {

    let listOfTables = this.props.tables.map(table => {
      return(
        <table>
          <thead>
            <tr>
              <th>Name</th>
              <th></th>
            </tr>
          </thead>
 
          <tbody>
              <tr>
                <td>{table.name}</td>
                <td><a href={"/tables/"+table.id}>Show</a></td>
                <td><a rel="nofollow" data-method="delete" href={"/tables/"+table.id+"/invitations"}>Leave</a></td>
                <td><a href={"/tables/"+table.id+""/invitations/new"}>Invitations</a></td>
              </tr>
          </tbody>
        </table>
      )
    })
  return (
    <div className="IndexPage">
      {listOfTables}
    </div>
  )
  }
}
export default IndexPage;

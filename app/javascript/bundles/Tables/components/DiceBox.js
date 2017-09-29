import React, {Component} from 'react';

class DiceBox extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedSet: this.props.selected_set,
      dice_count: 1,
      die_size: 20,
      bonus: "",
    }
    this.handleSubmit = this.handleSubmit.bind(this)
    this.deliverPayload = this.deliverPayload.bind(this)
    this.handleCountChange = this.handleCountChange.bind(this)
    this.handleSizeChange = this.handleSizeChange.bind(this)
    this.handleBonusChange = this.handleBonusChange.bind(this)
    this.handleSavedRoll = this.handleSavedRoll.bind(this)
    this.clearForm = this.clearForm.bind(this)
  }

  handleCountChange(event) {
    this.setState({ dice_count: parseInt(event.target.value) })
  }
  handleSizeChange(event) {
    this.setState({ die_size: parseInt(event.target.id) })
  }
  handleBonusChange(event) {
    this.setState({ bonus: parseInt(event.target.value) })
  }
  handleSavedRoll(roll) {
    let formPayload = {
      die_roll: {
        dice_count: roll.dice_count,
        die_size: roll.die_size,
        bonus: roll.bonus
      }
    }
    this.deliverPayload(formPayload)
  }
  clearForm(){
    this.setState({dice_count: 1, die_size: 20, bonus: ""})
  }

  handleSubmit(e) {
    e.preventDefault();
    let formPayload = {
      die_roll: {
        dice_count: this.state.dice_count,
        die_size: this.state.die_size,
        bonus: this.state.bonus
      }
    }
    this.deliverPayload(formPayload);
  }
  deliverPayload(formPayload) {
    let header = ReactOnRails.authenticityHeaders({'Accept': 'application/json','Content-Type': 'application/json'})
    fetch('/tables/'+ this.props.table_id+'/die_rolls', {
      method: 'POST',
      headers: header,
      credentials: 'same-origin',
      body: JSON.stringify(formPayload)
    })
    this.clearForm()
  }

  render() {
    let dieStats = [
      {size: "4", image: this.state.selectedSet.d4_url, id: "die_roll_die_size_4"},
      {size: "6", image: this.state.selectedSet.d6_url, id: "die_roll_die_size_6"},
      {size: "8", image: this.state.selectedSet.d8_url, id: "die_roll_die_size_8"},
      {size: "10", image: this.state.selectedSet.d10_url, id: "die_roll_die_size_10"},
      {size: "100", image: this.state.selectedSet.d100_url, id: "die_roll_die_size_100"},
      {size: "12", image: this.state.selectedSet.d12_url, id: "die_roll_die_size_12"},
      {size: "20", image: this.state.selectedSet.d20_url, id: "die_roll_die_size_20"}
    ]

    let optionElements = this.props.roll_limit.map(option =>{
      return (
        <option key={option} value={option}>{option}</option>
      );
    })

    let diceSets = this.props.dice_sets.map(option =>{
      return (
        <option key={option} value={option}>{option}</option>
      );
    })

    let radioCollection = dieStats.map(die =>{
      return (
        <div className="six columns dice-tile">
          <label htmlFor={die.id}>
            <img src={die.image} id={die.size} onClick={this.handleSizeChange} />
            <input type="radio" id={die.id} value={this.state.die_size} name="die_roll[die_size]" checked={this.state.die_size==die.size} onChange={this.handleSizeChange}/>
          </label>
        </div>
      )
    })

    let savedRollsBox = this.props.saved_rolls.map(roll =>{

      return (
        <button  onClick={this.handleSavedRoll.bind(this, roll)}>{roll.name}</button>
      )
    })

    return(
      <div className="dice-box two columns">


        <form onSubmit={this.handleSubmit}>
          <div className="six columns">
            <select id="die_roll_dice_count" className="dice-tile" onChange={this.handleCountChange} value={this.state.dice_count}>
              {optionElements}
            </select>
          </div>

          {radioCollection}

          <label htmlFor="die_roll_bonus"> <strong>Bonus:</strong>
            <input type='text' name='bonus' autoComplete="off" className="scrap" onChange={this.handleBonusChange} value={this.state.bonus}/>
          </label>
          <input type="submit" value="Roll 'em!"/>
        </form>

        {savedRollsBox}
      </div>
    )
  }
}
export default DiceBox;

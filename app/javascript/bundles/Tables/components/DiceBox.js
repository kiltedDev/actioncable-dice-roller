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
    if event.target.value > 0 {
      this.setState({ bonus: parseInt(event.target.value) })
    } else {
      this.setState({ bonus: "" })
    }
  }
  clearForm(){
    this.setState({dice_count: 1, die_size: 20, bonus: ""})
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
    let dice = ["4","6","8","10","100","12","20"]
    let dieStats = dice.map((die) => {
      let key = `d${die}_url`
      return {
        size: die,
        image: this.state.selectedSet[key],
        id: `die_roll_die_size_${die}`
      }
    })


    let optionElements = this.props.roll_limit.map(option =>{
      return (
        <option key={option} value={option}>{option}</option>
      );
    })

    let radioCollection = dieStats.map(die =>{
      return (
        <div className="five columns dice-tile">
          <label htmlFor={die.id}>
            <img src={die.image} id={die.size} onClick={this.handleSizeChange} />
            <input type="radio" id={die.id} value={this.state.die_size} name="die_roll[die_size]" checked={this.state.die_size==die.size} onChange={this.handleSizeChange}/>
          </label>
        </div>
      )
    })

    let savedRollsBox = this.props.saved_rolls.map(roll =>{

      return (
        <button onClick={() => this.handleSavedRoll(roll)}>{roll.name}</button>
      )
    })

    return(
      <div className="dice-box three columns">


        <form onSubmit={this.handleSubmit}>
          <div className="five columns dice-tile">
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

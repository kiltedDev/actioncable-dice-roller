import React, {Component} from 'react';

class DiceBox extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedSet: this.props.selected_set
      diceSets: this.props.dice_sets
      rollLimit: this.props.roll_limit
      dice_count: 1
      die_size: 20
      bonus: null
      dieStats = [
        {size: "4", image: this.state.selectedSet.d4_url, id: "die_roll_die_size_4"},
        {size: "6", image: this.state.selectedSet.d6_url, id: "die_roll_die_size_6"},
        {size: "8", image: this.state.selectedSet.d8_url, id: "die_roll_die_size_8"},
        {size: "10", image: this.state.selectedSet.d10_url, id: "die_roll_die_size_10"},
        {size: "100", image: this.state.selectedSet.d100_url, id: "die_roll_die_size_100"},
        {size: "12", image: this.state.selectedSet.d12_url, id: "die_roll_die_size_12"},
        {size: "20", image: this.state.selectedSet.d20_ur, id: "die_roll_die_size_20"}]
      ]
    }
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleCountChange(e) {
    this.setState({dice_count: e.target.value})
  }
  handleSizeChange(e) {
    this.setState({die_size: e.target.value})
  }
  handleBonusChange(e) {
    this.setState({bonus: e.target.value})
  }

  clearForm(){
    this.setState({dice_count: 1, die_size: 20, bonus: null})
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
    fetch('/tables/'+this.state.table_id+'/die_rolls.json', {
      method: 'POST',
      credentials: 'same-origin'.
      body: JSON.stringify(formPayload)
    }).then(response => {
      let newDieRoll = response.json()
      return newDieRoll
    }).then(newDieRoll => {
      this.props.newDieRoll(newDieRoll, this.props.table_id)
      this.clearForm()
    })
  }

  render() {

    let optionElements = this.props.rollLimit.map(option =>{
      return (
        <option key={option[0]} value={option[0]}>{option[0]}</option>
      );
    })

    let radioCollection = this.props.dieStats.map(die =>{
      return (
        <div class="six columns dice-tile">
          <label for={die.id}>
            <img src={die.image} id={die.id} >
            <input type="radio" id={die.id} value={die.size} checked={this.state.die_size === die.value} onChange={this.handleSizeChange}>
          </label>
        </div>
      )
    })

    return(
      <div className="dice-box two columns">
        <form onSubmit={this.handleSubmit}>
          <select  value=1>
            {optionElements}
          </select>

          {radioCollection}

          <label for="die_roll_bonus"> <strong style="font-size: 14pt">Bonus:</strong>
            <input type='text' name='bonus' autocomplete="off" className="scrap" onChange={this.handleBonusChange} />
          </label>
          <input type="submit" value="Roll 'em!">
        </form>
      </div>
    )
  })

  return (
    <div className="diceBox">
      {comments}
    </div>
  )
  }
}
export default DiceBox;

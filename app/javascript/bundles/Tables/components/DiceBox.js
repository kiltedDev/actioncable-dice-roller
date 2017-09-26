import React, {Component} from 'react';

class DiceBox extends Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(event) {

  }

  render() {

    let optionElements = this.props.dice_count.map(option =>{
      return (
        <option key={option} value={option}>{option}</option>
      );
    })

    return(
      <div class="dice-box two columns">
      <form onSubmit={this.handleSubmit}>
        <select  value=1>
          {optionElements}
        </select>

        <%= f.collection_radio_buttons(:die_size,  @die_sizes, :first, :last, checked: 20) do |b| %>
          <div class="six columns dice-tile">
            <%= b.label { image_tag("#{b.text}") + b.radio_button } %>
          </div>
        <% end %>

          <label for="die_roll_bonus"> <strong style="font-size: 14pt">Bonus:</strong>
          <input
            name=
            type='text'
          />
          <%= f.text_field :bonus, autocomplete: "off", class: "scrap" %>
          </label>
          <input type="submit" value="Roll 'em!">
        <% end %>
      </div>
    )
  })

  return (
    <div className="diceBox">
      <h4>Comments</h4>
      {comments}
    </div>
  )
  }
}
export default DiceBox;

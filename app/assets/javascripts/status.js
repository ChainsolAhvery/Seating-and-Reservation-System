//'use strict';

const header_element = React.createElement;

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = { is_avail: true };
  }

  render() {
    if (!this.state.is_avail) {
      return React.createElement("div", null,
        React.createElement("p", {class: "d-inline"}, "Occupied"),
        React.createElement(
          "button", {
          onClick: () => this.setState({ is_avail: true }),
          class: "d-inline ml-3"}, 
          "Dismiss"));
    } 
    else {
      return React.createElement("div", null,
        React.createElement("p", {class: "d-inline"}, "Available"),
        React.createElement(
          "button", {
          onClick: () => this.setState({ is_avail: false }),
          class: "d-inline ml-3"}, 
          "Assign"));
    }   
  }
}


window.addEventListener("DOMContentLoaded", function() {
  domContainer = document.querySelector('#table-status1');
  ReactDOM.render(React.createElement(Header), domContainer);

  domContainer = document.querySelector('#table-status2');
  ReactDOM.render(React.createElement(Header), domContainer);

  domContainer = document.querySelector('#table-status3');
  ReactDOM.render(React.createElement(Header), domContainer);
  
  domContainer = document.querySelector('#table-status4');
  ReactDOM.render(React.createElement(Header), domContainer);
}, false);
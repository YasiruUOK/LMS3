
/**
 * Provides suggestions for state names (USA).
 * @class
 * @scope public
 */
function StateSuggestions() {
    var dps = ["Colombo","Gampaha","Kurunegala","Kandy","Kalutara","Ratnapura","Galle","Anuradhapura","Kegalle","Badulla","Matara","Puttalam","Nuwara Eliya","Ampara","Hambantota","Jaffna","Batticaloa","Matale","Moneragala","Polonnaruwa","Trincomalee","Vavuniya","Kilinochchi","Mannar","Mullaitivu"];
    
    this.states = dps;
}

/**
 * Request suggestions for the given autosuggest control. 
 * @scope protected
 * @param oAutoSuggestControl The autosuggest control to provide suggestions for.
 */
StateSuggestions.prototype.requestSuggestions = function (oAutoSuggestControl /*:AutoSuggestControl*/,
    bTypeAhead /*:boolean*/) {
    var aSuggestions = [];
    var sTextboxValue = oAutoSuggestControl.textbox.value;

    if (sTextboxValue.length > 0) {

        //search for matching states
        for (var i = 0; i < this.states.length; i++) {
            if (this.states[i].indexOf(sTextboxValue) == 0) {
                aSuggestions.push(this.states[i]);
            }
        }
    }

    //provide suggestions to the control
    oAutoSuggestControl.autosuggest(aSuggestions, bTypeAhead);
};
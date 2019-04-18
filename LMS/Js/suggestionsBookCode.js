
/**
 * Provides suggestions for state names (USA).
 * @class
 * @scope public
 */
function StateSuggestions() {
    var dps = [];
    $.ajax({
        type: "GET",
        url: "api/myapi/getBookCode",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            for (var i = 0; i < data.length; i++) {
                dps.push(data[i].bookCode);
            }
        },
        error: function (request) {
            handle_error(request);
        },
        beforeSend: function (xhr, settings) { xhr.setRequestHeader('Authorization', mycookie()); }
    });
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
// First commit
// Test bed for basic survey
var survey_table = document.createElement("table");
var question_table = document.createElement("table");

// Holds the main survey
function Survey(survey_name){
    this.name = survey_name;
    this.section_index = 0;
    this.section_list = [];

    Survey.prototype.clean = function(element){
        while(element.firstChild)element.removeChild(element.firstChild);
    }
    
    Survey.prototype.drawHeader = function(text_header)
    {
        var tr_h = document.createElement("tr");
        var td_h = document.createElement("td");
        var header_field = document.createTextNode(text_header);
        tr_h.style.fontSize = "24px";

        td_h.appendChild(header_field);
        tr_h.appendChild(td_h);
        survey_table.appendChild(tr_h);      
    }

    Survey.prototype.attachQuestionTable = function(text_header)
    {
        var tr_b = document.createElement("tr");
        var td_b = document.createElement("td");

        td_b.appendChild(question_table);
        tr_b.appendChild(td_b);
        survey_table.appendChild(tr_b);   
    }

    Survey.prototype.drawNavigationButtons = function()
    {
        var _this = this;
        var tr_n = document.createElement("tr");
        var td_n1 = document.createElement("td");
        //var td_n2 = document.createElement("td");

        var back = document.createElement("input");
        var forward = document.createElement("input");
            
        back.setAttribute("type", "button");
        back.setAttribute("value", "prev");
        back.setAttribute("name", "back");

        forward.setAttribute("type", "button");
        forward.setAttribute("value", "next");
        forward.setAttribute("name", "forward");

        back.addEventListener('click', function(){this.goToPrevQuestion();}.bind(this), false);
        forward.addEventListener('click', function(){this.goToNextQuestion();}.bind(this), false);

        // TODO: Make code less ugly.
        // Adds forward/back buttons to table.
        if(!(this.section_index == 0 && this.getCurrentSection().getQuestionIndex() == 0))
            td_n1.appendChild(back);
        if(!(this.section_index == this.section_list.length-1 && this.getCurrentSection().getQuestionIndex() == this.getCurrentSection().question_list.length-1))
            td_n1.appendChild(forward);

        //td_n2.align = "right";
        tr_n.appendChild(td_n1);
        //tr_n.appendChild(td_n2);
        survey_table.appendChild(tr_n);
    }

    Survey.prototype.loadSurvey = function(){
        // Clean main survey table - TODO: replace question table directly
        while(survey_table.firstChild)survey_table.removeChild(survey_table.firstChild);

        this.drawHeader(this.name);
        this.section_list[this.section_index].question_list[this.section_list[this.section_index].getQuestionIndex()].drawQuestion();
        this.attachQuestionTable();
        this.drawNavigationButtons();
        document.body.appendChild(survey_table);
    }

    Survey.prototype.newSection = function(section_number){
        this.section_list.push(new Section(section_number));
    }

    Survey.prototype.prevSection = function(){
        this.section_index--;
    }

    Survey.prototype.nextSection = function(){
        this.section_index++;
    }

     Survey.prototype.startOfSection = function(){
        return (this.section_list[this.section_index].getQuestionIndex() == 0);
    }

    Survey.prototype.endOfSection = function(){
        return (this.section_list[this.section_index].getQuestionIndex()+1 == this.section_list[this.section_index].question_list.length);
    }

    Survey.prototype.getLatestSection = function(){
        return this.section_list[this.section_list.length-1];
    }

    Survey.prototype.getCurrentSection = function()
    {
        return this.section_list[this.section_index];
    }

    Survey.prototype.goToNextQuestion = function()
    {
        if(this.endOfSection())this.nextSection();
        else this.section_list[this.section_index].nextQuestion();

        this.loadSurvey();
    }

    Survey.prototype.goToPrevQuestion = function()
    {
        if(this.startOfSection())this.prevSection();
        else this.section_list[this.section_index].prevQuestion();

        this.loadSurvey();
    }
}

// Holds the questions in each section
function Section(section_number){
    this.section = section_number;
    this.question_index = 0;
    this.question_list = [];

    Section.prototype.newQuestion = function(question_string){
        this.question_list.push(new Question(question_string));
    }

    Section.prototype.prevQuestion = function(){
        this.question_index--;
    }

    Section.prototype.nextQuestion = function(){
        this.question_index++;
    }

    Section.prototype.getLatestQuestion = function(){
        return this.question_list[this.question_list.length-1];
    }

    Section.prototype.getQuestionIndex = function(){
        return this.question_index;
    }

    Section.prototype.getCurrentQuestion = function()
    {
        return this.question_list[question_index];
    }
}

// Holds the question text and choices involved
function Question(question_string){
    this.text = question_string;
    this.format = "radio";
    this.choice_list = [];

    Question.prototype.newChoice = function(text_string){
        this.choice_list.push(new Choice(text_string));
        return this.choice_list[this.choice_list.length-1];
    }

    Question.prototype.setFormat = function(type){
        this.format = type;
    }

    // Outdated, will probably be removed
    Question.prototype.drawChoices = function(type){
        var element = document.createElement("input");
        var c_text = document.createTextNode("Test");
        element.setAttribute("type", type);
        element.setAttribute("value", type);
        element.setAttribute("name", type);
        
        spanner.appendChild(c_text);
        spanner.appendChild(element);      
    }

    Question.prototype.createElement = function(type){
        var element = document.createElement("input");
            
        element.setAttribute("type", type);
        element.setAttribute("value", i);
        element.setAttribute("name", type+"_group");

        return element;
    }

    // Draws the question and choices in a table
    Question.prototype.drawQuestion = function(){
        // Draw question in upper table
        var tr_q = document.createElement("tr");
        var td_q = document.createElement("td");
        var question_text = document.createTextNode(this.text);

        // Use a clean table
        delete question_table;
        question_table = document.createElement("table");

        td_q.appendChild(question_text);
        tr_q.appendChild(td_q);
        question_table.appendChild(tr_q);
        
        // Draw choices in lower table
        for(i = 0; i < this.choice_list.length; i++)
        {
            var tr_c = document.createElement("tr");
            var td_c = document.createElement("td");
            var c_text = document.createTextNode(this.choice_list[i].getText());
            var element = this.createElement(this.format);
            
            td_c.appendChild(element);
            td_c.appendChild(c_text);
            if(this.choice_list[i].hasValueField())td_c.appendChild(this.createElement("textbox"));
            tr_c.appendChild(td_c);
            question_table.appendChild(tr_c);  
        }
    }

}

// Holds the text for the choice
function Choice(choice_string){
    this.text = choice_string;
    this.value_field = false;

Choice.prototype.getText = function(){
    return this.text;
}

Choice.prototype.hasValueField = function(){
    return this.value_field;
}

Choice.prototype.addValueField = function(){
    this.value_field = true;
}
}

// Test
var brfss = new Survey("CDC Population Health Informatics Survey");
brfss.newSection(1);
brfss.getLatestSection().newQuestion("Would you say that in general your health is-");
brfss.getLatestSection().getLatestQuestion().newChoice("Excellent")
brfss.getLatestSection().getLatestQuestion().newChoice("Very Good");
brfss.getLatestSection().getLatestQuestion().newChoice("Good");
brfss.getLatestSection().getLatestQuestion().newChoice("Fair");
brfss.getLatestSection().getLatestQuestion().newChoice("Poor");
brfss.getLatestSection().getLatestQuestion().newChoice("Don't Know/Not Sure");
brfss.getLatestSection().getLatestQuestion().newChoice("Refuse");

brfss.newSection(2);
brfss.getLatestSection().newQuestion("Now thinking about your physical health, which includes physical illness and injury, for how many days during the past 30 days was your physical health not good?");
brfss.getLatestSection().getLatestQuestion().newChoice("Number of days: ").addValueField();
brfss.getLatestSection().getLatestQuestion().newChoice("Don't Know/Not Sure");
brfss.getLatestSection().getLatestQuestion().newChoice("Refuse");

brfss.getLatestSection().newQuestion("Now thinking about your mental health, which includes stress, depression, and problems with emotions, for how many days during the past 30 days was your mental health not good?");
brfss.getLatestSection().getLatestQuestion().newChoice("Number of days: ").addValueField();
brfss.getLatestSection().getLatestQuestion().newChoice("Don't Know/Not Sure");
brfss.getLatestSection().getLatestQuestion().newChoice("Refuse");

brfss.getLatestSection().newQuestion("During the past 30 days, for about how many days did poor physical or mental health keep you from doing your usual activities, such as self-care, work, or recreation?");
brfss.getLatestSection().getLatestQuestion().newChoice("Number of days: ").addValueField();
brfss.getLatestSection().getLatestQuestion().newChoice("Don't Know/Not Sure");
brfss.getLatestSection().getLatestQuestion().newChoice("Refuse");

//On load
window.onload = brfss.loadSurvey();
//document.body.appendChild(question_table);
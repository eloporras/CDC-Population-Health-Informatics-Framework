 function getPatientName (pt) {
          //console.log(pt);
            if (pt.name) {
            
                var names = pt.name.map(function(name) {
                    return name.given.join(" ") + " " + name.family.join(" ");
                });
                return names.join(" / ")
            } else {
                return "anonymous";
            }
            
           
        }
        function getMedicationName (medCodings) {
            var coding = medCodings.find(function(c){
                return c.system == "http://www.nlm.nih.gov/research/umls/rxnorm";
            });
            return coding && coding.display || "Unnamed Medication(TM)"
        }
        function displayPatient (pt) {
            document.getElementById('patient_name').innerHTML = getPatientName(pt);
        }
        var med_list = document.getElementById('med_list');
        
        function displayMedication (medCodings) {
            med_list.innerHTML += "<li> " + getMedicationName(medCodings) + "</li>";
        }  
        
        
        var response_list = document.getElementById('response_list');
        function fetchPatientResponse(pt2) {
          response_list.innerHTML += "<li> " + getText(pt2) + "</li>";
          //console.log(pt2);
        }
        function fetchPatientAnswer(pt3){
         
          console.log(pt3);
        }        
        
        function getText (pt2) {
          //console.log(pt2);
          return pt2;           
           
        };
        
        FHIR.oauth2.ready(function(smart){
            smart.patient.read().then(function(pt) {
                displayPatient (pt);
            });
           
             smart.patient.api.search({type: 'QuestionnaireResponse'}).then(function(pt3) { 
                fetchPatientAnswer(pt3);
            });
            
            //method to figure out how to fetch data from server
            
            /*smart.patient.api.fetchAllWithReferences({type: 'Condition'}).then(function(pt2) { 
                fetchPatientResponse(pt2);
            });*/
            smart.patient.api.fetchAllWithReferences({type: 'Condition'}).then(function(results, refs) { 
                //fetchPatientResponse(pt2);
                results.forEach(function(pt2){
                    if (pt2.code) {
                        fetchPatientResponse(pt2.code.text);
                    } else {
                       console.log("fail");
                    }
               });               
                
            });
                       
            smart.patient.api.fetchAllWithReferences({type: "MedicationOrder"},["MedicationOrder.medicationReference"]).then(function(results, refs) {
               results.forEach(function(prescription){
                    if (prescription.medicationCodeableConcept) {
                        displayMedication(prescription.medicationCodeableConcept.coding);
                    } else if (prescription.medicationReference) {
                        var med = refs(prescription, prescription.medicationReference);
                        displayMedication(med && med.code.coding || []);
                    }
               });
            });
       
        });
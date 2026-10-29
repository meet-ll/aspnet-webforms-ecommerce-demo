function confirmFormSubmit(){ return window.confirm("Submit this demo form?"); }
function markDirty(input){ input.setAttribute("data-dirty","true"); }
function validateField(input){ if(input && input.checkValidity){input.setAttribute("aria-invalid",input.checkValidity()?"false":"true");} }
function updateCharacterCount(input,targetId){var t=document.getElementById(targetId);if(t){t.textContent=input.value.length+" characters";}}

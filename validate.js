function validate() {
  var name = document.form.Name.value;
  var pass = document.form.Password.value;
  if (name.length < 6) {
    alert('Name is too short');
    return false;
  }
  if (pass.length < 6 || pass === '') {
    alert('Password is too short or empty');
    return false;
  }
  alert('Successfully registered');
  return true;
}

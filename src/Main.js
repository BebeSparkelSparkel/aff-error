exports.instantSuccess = s => (onError, onSuccess) => {
  onSuccess(s)
  return (cancelError, cancelerError, cancelerSuccess) => {cancelerSuccess()}
}


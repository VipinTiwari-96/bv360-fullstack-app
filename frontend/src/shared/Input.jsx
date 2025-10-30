import React from "react";

const Input = ({
  id,
  name,
  type,
  onChange,
  value,
  onBlur,
  label,
  htmlFor,
  error,
  touched,
}) => {
  return (
    <div className="flex flex-col">
      <label htmlFor={htmlFor}>{label}</label>

      <input
        id={id}
        name={name}
        type={type}
        onChange={onChange}
        value={value}
        onBlur={onBlur}
        className="border outline-none rounded-md p-1"
      />
      <div className="h-4">
        {touched && error ? (
          <div className="text-xs text-red-400">{error}</div>
        ) : null}
      </div>
    </div>
  );
};

export default Input;

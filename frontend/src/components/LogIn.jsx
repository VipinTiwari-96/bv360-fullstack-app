import React, { useState } from "react";
import { useFormik } from "formik";
import * as Yup from "yup";
import { loginApi } from "../api";
import { useNavigate } from "react-router-dom";
import Input from "../shared/Input";

const LogIn = () => {
  const [errorMessage, setErrorMessage] = useState("");
  const navigate = useNavigate();

  const handleLoginSubmit = async (values) => {
    try {
      const res = await loginApi(values);
      setErrorMessage(res);
      navigate("/dashboard");
    } catch (error) {}
  };

  const validationSchema = Yup.object({
    email: Yup.string().email("Invalid email format").required(),
    password: Yup.string().required().min(4),
  });

  const formik = useFormik({
    initialValues: { email: "", password: "" },
    onSubmit: handleLoginSubmit,
    validationSchema,
  });

  const {
    handleSubmit,
    handleChange,
    values,
    touched,
    errors,
    handleBlur,
    dirty,
    isValid,
  } = formik;

  const isDisable = !dirty || !isValid;

  return (
    <div className="pt-40">
      <div className="border w-80 mx-auto p-8 rounded-md border-gray-300">
        <h3 className="flex items-center justify-center text-xl font-bold">
          Login
        </h3>
        <form onSubmit={handleSubmit} className="flex flex-col gap-1 pt-8">
          <Input
            id="email"
            name="email"
            type="email"
            onChange={handleChange}
            value={values.email}
            onBlur={handleBlur}
            touched={touched.email}
            error={errors.email}
            label="Email"
            htmlFor="email"
          />
          <Input
            id="password"
            name="password"
            type="password"
            onChange={handleChange}
            value={values.password}
            onBlur={handleBlur}
            touched={touched.password}
            error={errors.password}
            label="Password"
            htmlFor="password"
          />

          <button
            type="submit"
            disabled={isDisable}
            className={`border mt-3 py-2 px-3 rounded-md  self-end ${
              isDisable
                ? "bg-gray-100 text-gray-400 cursor-not-allowed"
                : "cursor-pointer"
            }`}
          >
            Submit
          </button>
        </form>
        {errorMessage && (
          <span className="text-xs text-red-400">{errorMessage}</span>
        )}
      </div>
    </div>
  );
};

export default LogIn;

import { Navigate } from "react-router-dom";
import { getToken } from "../storage";

const withAuth = (WrappedComponent) => {
  return (props) => {
    const token = getToken();
    return token ? <WrappedComponent {...props} /> : <Navigate to={"/login"} />;
  };
};

export default withAuth;

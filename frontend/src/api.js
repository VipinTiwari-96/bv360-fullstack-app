import axios from "axios";
import { getToken, removeToken, setToken } from "./storage";

const api = axios.create({ baseURL: "http://localhost:3333/api" });

api.interceptors.request.use((config) => {
  const token = getToken();
  if (token) {
    config.headers.Authorization = `Bearer ${token}`;
  }
  return config;
});

export const loginApi = async (values) => {
  try {
    const res = await api.post("/login", values);
    setToken(res.data.token);
  } catch (error) {
    console.log(error.message);
    return error?.response?.data?.message;
  }
};

export const logoutApi = async () => {
  try {
    await api.post("/logout");
    removeToken();
  } catch (error) {
    console.log(error.message);
  }
};

export const getLoggedInUserApi = async () => {
  try {
    const res = await api.get("/user");
    return res.data?.user;
  } catch (error) {
    console.log(error.message);
    return undefined;
  }
};

export const getDashboardApi = async () => {
  try {
    const res = await api.get("/dashboard");
    return res.data?.projects;
  } catch (error) {
    console.log(error.message);
    return undefined;
  }
};

export default api;

import React, { useEffect, useState } from "react";
import { getDashboardApi, getLoggedInUserApi, logoutApi } from "../api";
import withAuth from "../hoc/withAuth";
import { useNavigate } from "react-router-dom";

const Dashboard = () => {
  const [user, setUser] = useState();
  const [dashboardData, setDashboardData] = useState();
  const [loading, setLoading] = useState(false);

  const navigate = useNavigate();

  const getUserAndDashboardData = async () => {
    setLoading(true);
    const userData = await getLoggedInUserApi();
    const userProjects = await getDashboardApi();
    setUser(userData);
    setDashboardData(userProjects);
    setLoading(false);
  };

  useEffect(() => {
    getUserAndDashboardData();
  }, []);

  const handleLogOutClick = () => {
    logoutApi();
    navigate("/login");
  };

  if (loading) {
    return <div className="text-xl p-4">Loading...</div>;
  }
  return (
    <div className="p-5">
      <button
        onClick={handleLogOutClick}
        className="border py-2 px-3 rounded-md cursor-pointer absolute right-0 top-0  m-2"
      >
        Logout
      </button>

      <div className="flex justify-center gap-16  mt-60">
        <div className="border w-44 h-32 p-1 text-sm rounded-md border-gray-400">
          <div className="w-8 mx-auto font-bold">{user?.fullName}</div>

          <div className="flex  justify-between pt-2 ">
            <div className="text-xs  pb-0">email:</div>
            <div className=" text-sm ">{user?.email}</div>
          </div>
        </div>
        <div>
          {dashboardData?.map((item) => (
            <div className="border w-44 h-32 p-1 text-sm rounded-md border-gray-400">
              <div className="w-8 mx-auto font-bold">{item?.name}</div>
              <div className="flex  justify-between pt-2 ">
                <div className="text-xs  pb-0">status:</div>
                <div className=" text-sm ">{item?.status}</div>
              </div>
              <div className="flex  justify-between pt-2 ">
                <div className="text-xs  pb-0">progress:</div>
                <div className=" text-sm ">{item?.progress}</div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default withAuth(Dashboard);

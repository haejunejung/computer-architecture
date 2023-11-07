import React, { useState } from "react";
import { Link } from "react-router-dom";
import ViewHeadlineIcon from "@mui/icons-material/ViewHeadline";
import FileUploader from "./FileUploader";

const Sidebar = (): JSX.Element => {
  const fold = localStorage.getItem("fold");
  const parseFold: boolean = fold === null ? false : JSON.parse(fold);
  const [isFold, setIsFold] = useState(parseFold);

  const onSidebarHandler = (event: React.MouseEvent<HTMLButtonElement>) => {
    localStorage.setItem("fold", JSON.stringify(isFold));
    setIsFold((prev) => !prev);
  };

  return (
    <nav className="px-4 py-4">
      <section>
        <button onClick={onSidebarHandler}>
          <ViewHeadlineIcon />
        </button>
        <FileUploader />
      </section>
      {isFold && (
        <section className="flex flex-col py-4">
          <Link to="/assembler">
            <button>Assembler</button>
          </Link>
          <Link to="/parser">
            <button>Parser</button>
          </Link>
          <Link to="/cache">
            <button>Cache</button>
          </Link>
        </section>
      )}
    </nav>
  );
};

export default Sidebar;

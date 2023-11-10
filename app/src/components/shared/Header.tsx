import React from 'react';
import {Link} from 'react-router-dom';

const Header = (): JSX.Element => {
  return (
    <nav className="px-10">
      <section className="flex py-4 space-x-6">
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
    </nav>
  );
};

export default Header;

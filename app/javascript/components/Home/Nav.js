import React, { Component } from 'react';

class Nav extends Component {
    render() {
        return (
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div className="container">
                    <div className="logo">
                        <a class="navbar-brand"></a>
                    </div>

                    <div className="navbar navbar-collapse" id="navbarSupportedContent">
                        <ul className="navbar-nav mr-auto">
                            <li className="nav-item dropdown active">
                                <a className="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    What is Lab? <span className="sr-only">(current)</span>
                                </a>
                                <div className="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a className="dropdown-item" href="#">Feautres</a>
                                    <a className="dropdown-item" href="#">Design</a>
                                    <div className="dropdown-divider"></div>
                                    <a className="dropdown-item" href="#">Support</a>
                                    <a className="dropdown-item" href="#">FAQs</a>
                                </div>
                            </li>
                            <li class="nav-item">

                            </li>
                        </ul>
                    </div>

                    <div className="search-form m-outo">
                        <form className="form-inline search-form my-2 my-lg-0" action="">
                            <input className="form-control mr-sm-4" type="search" placeholder="search lab..." />
                        </form>
                    </div>

                    <div className="auth-section">
                        <a className="sign-in" href="#">Sign in</a>
                        <button className="btn btn-outline" type="button" name="button">Sign up</button>
                    </div>

                </div>
            </nav>
        )
    }
}

export default Nav;
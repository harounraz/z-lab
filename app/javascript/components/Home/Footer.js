import React, { Component } from 'react';

class Footer extends Component {
    render() {
        return (
            <footer className="container footer mt-out py-3">
                <nav className="navbar d-flex">
                    <ul className="">
                        <li><a href="#">Documentation</a></li>
                        <li><a href="#">Licence</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                    <p>&copy; 2020. z-Lab. Developed by <a href="#">@~raz</a>.</p>
                </nav>
            </footer>
        )
    }
}

export default Footer;
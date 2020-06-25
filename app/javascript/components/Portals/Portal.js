import React from 'react';
import { BrowserRouter as Router, Link } from 'react-router-dom';

import Styled from 'styled-components';
import styled from 'styled-components';

const CardGroup = styled.div`
    
`;

const Card = styled.div`
    border: 1px solid #ececec;
    background: #fff;
`;

const CardBody = styled.div`

`;

const CardTitle = styled.div`
    font-size: 18px;
    font-weight: 600;
    a {
        text-decoration: none;
        color: #1b6ca8;
    }
    a:hover {
        color: #4F94CD;
    }
`;

const CardText = styled.div`
    font-size: 15px;
`;

const CardFooter = styled.div`

`;

const Portal = (props) => {
    return (
        <CardGroup>
            <Card>
                {/* <img class="card-img-top" src="..." alt="Card image cap">  */}
                <div className="card-body">
                    <CardTitle>
                        <Link to={`/portals/${props.attributes.slug}`}>
                            {props.attributes.name}
                        </Link>
                    </CardTitle>
                    <CardText>{props.attributes.description}</CardText>
                </div>
                <div className="card-footer">
                    <small className="text-muted">Last updated 3 mins ago</small>
                </div>
            </Card>
        </CardGroup>

    )
}

export default Portal;
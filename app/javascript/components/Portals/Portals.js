import React, { useState, useEffect, Fragment } from 'react';
import axios from 'axios';
import styled from 'styled-components';

import Portal from './Portal';

const Home = styled.div`
    max-width: 1000px;
    margin-right: auto;
    margin-left: auto;
`;

const Grid = styled.div`
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 10px;
    width: 100%;
    padding: 20px;
`;

const Portals = () => {
    const [portals, setPortals] = useState([])

    useEffect(() => {
        // get all portals from from the api
        // updates portals in a state
        axios.get('/api/v1/portals.json')
            .then(resp => {
                setPortals(resp.data.data)
            })
            .catch(resp => console.log(resp))
    }, [portals.length])

    const grid = portals.map(item => {
        return (
            <Portal
                key={item.attributes.name}
                attributes={item.attributes}
            />
        )
    })

    return (
        <Home>
            <Grid>
                {grid}
            </Grid>
        </Home>
    )
}

export default Portals;
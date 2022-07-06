const increase = (state, by) => {
    console.log(state.counter, " -> ", state.counter + 1);
    return {
        counter: state.counter + 1
    }
}

const decrease = (state, by) => {
    console.log(state.counter, " -> ", state.counter - 1);
    return {
        counter: state.counter - 1
    };
}

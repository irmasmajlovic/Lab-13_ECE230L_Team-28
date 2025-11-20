Name: Irma Smajlovic & Anthony Ducharme (Team 28)

# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Compare and contrast One Hot and Binary encodings

One hot uses one DFF (D flip flop) per state and only has 1 DFF on at a time. Binary encodings use 1 DFF per bit and can have multiple DFFs on at a time.

### Which method did your team find easier, and why?

We found the one hot easier because it is easier to find the transition logic than finding it for binary encodings.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

We would want to use a binary encoder when we want to save resources or space on a board because binary encoding needs 1 DFF per bit while one hot needs 1 DFF per state, so the one hot ends up using a lot more resources and space than the binary when representing a large amount of states.

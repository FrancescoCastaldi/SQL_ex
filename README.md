# SQL Exercises and Reference Library

This repository collects concise explanations, runnable examples, and practice exercises for common SQL topics. Each topic lives in its own folder so that new exercises and their corresponding solutions can be added without disrupting existing material.

## Repository structure

```
.
├── README.md
└── topics/
    ├── basic-aggregate-functions/
    │   ├── README.md         # Concept overview
    │   ├── setup.sql         # Optional sample schema/data (when needed)
    │   ├── exercises.sql     # Prompts with space to write queries
    │   └── solutions.sql     # Reference answers
    ├── case-expressions/
    ├── group-by-order-by/
    ├── group-by-where/
    └── joins/
```

Every topic folder follows the same pattern:

- **README.md** – short theory recap with examples.
- **setup.sql** – DDL/DML you can run to reproduce the dataset used in the exercises (omitted when not required).
- **exercises.sql** – prompts prepared with blank sections where you can write your own solution.
- **solutions.sql** – the official reference queries.
- Additional documentation (for example `additional-examples.md`) can be added for tips and deep dives.

## How to add a new topic or exercise

1. Create a new folder under `topics/` using kebab-case (e.g. `window-functions`).
2. Add a `README.md` that summarises the concept and includes at least one example query.
3. Provide `setup.sql` if the exercises need a reproducible dataset.
4. List the practice prompts in `exercises.sql`, leaving blank space after each heading for learners to write their query.
5. Mirror each prompt in `solutions.sql` with the verified query.
6. Update this README with a bullet point describing the new topic.

Following this layout keeps exercises and solutions paired together so it is easy to extend the collection over time.

## License

This repository is licensed under the MIT License.

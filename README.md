# xo_dqe_case_study

Welcome! 👋

This exercise is designed to evaluate your ability to design and implement QA tests for datasets.

Please do not spend more than 4 hours on this case study.

This repo contains a simple dbt project with **fake** patient data. You may connect it to a Snowflake instance if you have one readily available, or you could also sign up for a [free trial Snowflake account](https://signup.snowflake.com/) if you have not already done so in the past. **A Snowflake instance is recommended but not required.**

**Running queries, models and tests is not required.** You may simply view the project and submit your work/findings if you prefer. The case study is open-ended to an extent, so you may also use the [dbt seeds](./xo_dqe_case_study/seeds/) (which are just CSV files) to analyze them with another tool of your choice. The goal of the case study is to assess how you would approach the QA process on a dataset.

---

## 1. Prerequisites

To complete this exercise, you’ll need:

- **macOS, Linux, or Windows**

**If you plan to complete the case study with out running queries, models, and tests, you may skip to [Submitting your work](#9-submitting-your-work).**

If you'd like to work with the project (as opposed to just viewing), you'll need:

- **Python 3.8+**
- **Git**
- **Snowflake credentials** (if connecting to Snowflake):
  - `account`
  - `user`
  - `password`
  - `role`
  - `warehouse`
  - `database`
  - `schema`

---

## 2. Clone the repository

```bash
git clone <REPO_URL>
cd xo_dqe_case_study
```

---

## 3. Install dbt for Snowflake

We use **dbt Core** with the **Snowflake adapter**.

### 3.1 (Optional but recommended) Create a Python virtual environment

```bash
python -m venv .venv

# macOS / Linux
source .venv/bin/activate

# Windows (PowerShell)
.\.venv\Scripts\Activate.ps1
```

### 3.2 Install dbt-snowflake

```bash
pip install dbt-core dbt-snowflake
```

Verify installation:

```bash
dbt --version
```

Expected output includes:

- dbt-core: X.Y.Z  
- dbt-snowflake: X.Y.Z

---

## 4. Configure your dbt profile

dbt uses a file called `profiles.yml` for connection details.

Default location:

- macOS / Linux: `~/.dbt/profiles.yml`
- Windows: `C:\Users\<user>\.dbt\profiles.yml`

### 4.1 Create the directory if it doesn’t exist

```bash
mkdir -p ~/.dbt
```

### 4.2 Add this profile to `profiles.yml`

```yaml
xo_dqe_case_study:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: <ACCOUNT>
      user: <USER>
      password: <PASSWORD>
      role: <ROLE>
      database: <DATABASE>
      warehouse: <WAREHOUSE>
      schema: <SCHEMA>
      threads: 2
```

---

## 5. Test your connection

Run:

```bash
dbt debug
```

---

## 6. Running dbt

### 6.1 Seed data

```bash
dbt seed
```

### 6.2 Build models

```bash
dbt run
```

### 6.3 Run tests (no tests provided)

```bash
dbt test
```

---

## 7. Useful dbt commands

```bash
dbt run --select <model>
dbt test --select <model>
dbt ls
```

---

## 8. Troubleshooting

- Ensure virtual environment is activated.
- Check `profiles.yml` values carefully.
- Confirm Snowflake password and permissions.

---

## 9. Submitting your work

<span style="color:red"><b>NOTE: Please do not submit a pull request to the repo.</b></span>

Please provide:

- A summary of any identified data quality issues and how you would propose fixing them
- Any suggestions on updating documentation
- Any proposed dbt tests (Google is your friend!)
- (*Optional*) A brief strategy doc detailing how you would increase trust in the data over time. Consider personnel coverage, an alerting strategy, handling failing tests...

---

## 10. Questions?

If you have any clarifying question(s), or if any issues are found with the provided content, please do not hesitate to reach out to your point of contact.

Good luck! 🚀
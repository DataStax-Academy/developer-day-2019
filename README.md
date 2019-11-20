Welcome to Developer Day
========================================

In this repository, you'll find everything from the Developer Day event. There are materials used during presentations, hands-on exercises and reference applications. Feel free to bookmark this page for future reference!

<img src="./img/CassandraDayBanner.png" height="200" />

## Agenda

| Duration  | Title
|---|---|
| 90 minutes  | [Core Cassandra](https://github.com/DataStax-Academy/developer-day-2019/tree/master/slides/Developer%20Day%202019%20Core%20Cassandra.pdf)  |
| 120 minutes | [Cassandra Data Modeling](https://github.com/DataStax-Academy/developer-day-2019/tree/master/slides/Developer%20Day%202019%20Data%20Modeling.pdf)  |
| 90 minutes | [Cassandra Application Development](https://github.com/DataStax-Academy/developer-day-2019/tree/master/slides/Developer%20Day%202019%20Application%20Development.pdf)  |

TODO add other modules

## Hands-On Exercises 
### Installation Instructions
#### Docker Version (Recommended & Supported)
    git clone https://github.com/DataStax-Academy/developer-day-2019.git
    cd developer-day-2019
    docker-compose up -d
Wait for DSE to start up (may take a minute or about that) and load the data:

    docker-compose exec dse /data/load_data.sh
Open [localhost:9091](http://localhost:9091) (if you use *docker-machine* or previous version of *Docker for Mac*, your hostname may vary)
#### Manual Installation
* [Install DataStax Enterprise](https://docs.datastax.com/en/install/doc/install60/installTOC.html)
* [Install DataStax Studio](https://docs.datastax.com/en/install/doc/install60/installStudio.html)
   - The notebooks below should be [imported](https://docs.datastax.com/en/studio/6.0/studio/importNotebook.html) and opened in DataStax Studio

### Exercises

**Notice** You don't need to do any additional setup if you use Docker Version.

#### Core Cassandra
| Notebook File | Setup Notes
|---|---|
| [Core Cassandra First Touch](https://github.com/DataStax-Academy/developer-day-2019/tree/master/studio/notebooks/01-01_-_Core_Cassandra_First_Touch.studio-nb.tar) | - Data should be [loaded](data) in the `killrvideo` keyspace.
| [Core Cassandra Data Loading](https://github.com/DataStax-Academy/developer-day-2019/tree/master/studio/notebooks/01-02_-_Core_Cassandra_Data_Loading.studio-nb.tar) | - Data should be [loaded](data) in the `killrvideo` keyspace.<br> - Uses the file **movies.csv**, located in this repo under `data/csv/movies.csv`.
| [Core Cassandra Data Availability](https://github.com/DataStax-Academy/developer-day-2019/tree/master/studio/notebooks/01-03_-_Core_Cassandra_Data_Availability.studio-nb.tar) | - This notebook exercise can only be done with a three-node DSE cluster.<br> - Recommended to drop the `killrvideo` keyspace, if it exists.<br>- Uses a hard-coded datacenter `DC1`; replace that with your own datacenter name, where needed.<br> - Install and setup [DataStax OpsCenter](https://docs.datastax.com/en/install/doc/install60/opscInstallOpsc.html) to monitor your cluster.

#### Data Modeling
| Notebook File | Setup Notes
|---|---|
| [Intro](studio/notebooks/02-01_-_Data_Modeling_Data_Modeling_Intro.studio-nb.tar) | - Data should be [loaded](data) in the `killrvideo` keyspace.
| [Cassandra-Land Project Part 1](studio/notebooks/02-02_-_Data_Modeling_Cassandra-Land_Project_PART_1.studio-nb.tar) | - Data should be [loaded](data) in the `killrvideo` keyspace.
| [Cassandra-Land Project Part 2](studio/notebooks/02-03_-_Data_Modeling_Cassandra-Land_Project_PART_2.studio-nb.tar) | - Data should be [loaded](data) in the `killrvideo` keyspace.
| [Cassandra-Land Project Part 3](studio/notebooks/02-04_-_Data_Modeling_Cassandra-Land_Project_PART_3.studio-nb.tar) | - Data should be [loaded](data) in the `killrvideo` keyspace.

#### Application Development
| Notebook File | Setup Notes
|---|---|
| [Prepared Statements](studio/notebooks/03-01_-_Application_Development.studio-nb.tar) | - The [KillrVideo reference app](https://killrvideo.github.io/docs/languages/java/) should be set up using the `app-cassandra-day-exercises` branch.

### Extra Materials

* Get involved more tutorials here [DataStax Academy](https://academy.datastax.com/)
* Learn more about [KillrVideo](https://github.com/killrvideo)
* More sample codes [HERE](https://github.com/DataStaxCodeSamples)

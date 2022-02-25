<?php

namespace baseball;

/**
 * Generic datasource class for handling DB operations.
 * Uses MySqli and PreparedStatements.
 *
 * @version 2.5 - recordCount function added
 */
class DataSource
{
	const servername = "localhost";
	const username = "root";
	const password = "Baseball481";
	const dbname = "baseball";
	private $conn;

	/**
     * PHP implicitly takes care of cleanup for default connection types.
     * So no need to worry about closing the connection.
     *
     * Singletons not required in PHP as there is no
     * concept of shared memory.
     * Every object lives only for a request.
     *
     * Keeping things simple and that works!
     */

	  /**
     * If connection object is needed use this method and get access to it.
     * Otherwise, use the below methods for insert / update / etc.
     *
     * @return \mysqli
     */

	

	function __construct()
    {
        $this->conn = $this->getConnection();
    }

	public function getConnection()
    {
        $conn = new \mysqli(self::servername, self::username, self::password, self::dbname);

        if (mysqli_connect_errno()) {
            trigger_error("Problem with connecting to database.");
        }

        $conn->set_charset("utf8");
        return $conn;
    }
}
?>
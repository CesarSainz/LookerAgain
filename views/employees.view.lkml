view: employees {
  sql_table_name: demo_db.Employees ;;

  dimension: emp_id {
    type: number
    sql: ${TABLE}.EmpID ;;
  }
  dimension: manager {
    type: number
    sql: ${TABLE}.Manager ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }
  dimension: test_url {
    sql: ${TABLE}.Name ;;
    link:{
      label: "test1"
      url: "https://gcpl2320.cloud.looker.com/dashboards/11?Name={{employees.name}}"
    }
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}

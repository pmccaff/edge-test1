view: history_view {
  sql_table_name: public.history_view ;;

  dimension: alarmtype {
    type: number
    sql: ${TABLE}.alarmtype ;;
  }

  dimension: cellnumber {
    type: number
    sql: ${TABLE}.cellnumber ;;
  }

  dimension: current {
    type: number
    sql: ${TABLE}.current ;;
  }

  dimension: entity_id {
    type: string
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entry_id {
    type: number
    sql: ${TABLE}.entry_id ;;
  }

  dimension: errorindicator {
    type: yesno
    sql: ${TABLE}.errorindicator ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_date ;;
  }

  dimension: jobnumber {
    type: number
    sql: ${TABLE}.jobnumber ;;
  }

  dimension: offline {
    type: yesno
    sql: ${TABLE}.offline ;;
  }

  dimension: running {
    type: yesno
    sql: ${TABLE}.running ;;
  }

  dimension: site {
    type: number
    sql: ${TABLE}.site ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
  }

  dimension: started {
    type: yesno
    sql: ${TABLE}.started ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.temperature ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: vin {
    type: number
    sql: ${TABLE}.vin ;;
  }

  dimension: voltage {
    type: number
    sql: ${TABLE}.voltage ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }

  dimension: z {
    type: number
    sql: ${TABLE}.z ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

 create table states (
      state_id         varchar2(2),
      state_name       varchar2(20),
      constraint states_pk
        primary key (state_id)
    )
    organization index
    /


create table t as
      select *
        from all_objects
       where rownum < 51
    /


     create index t_idx
    on t( object_id )
    /


     analyze table t compute statistics
    /


     set autotrace on
     select *
      from t
     where object_id = 10
    /



     set autotrace off
     drop table t
    /



     create table t as
      select *
        from all_objects
       where rownum < 10001
    /


     create index t_idx
    on t( object_id )
   /



     analyze table t compute statistics
    /


     set autotrace traceonly
     select *
      from t
     where object_id = 10
    /
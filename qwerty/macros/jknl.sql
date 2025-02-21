
{%- macro jknl(parameter1) -%}
    select * from {{ parameter1 }}
{%- endmacro -%}

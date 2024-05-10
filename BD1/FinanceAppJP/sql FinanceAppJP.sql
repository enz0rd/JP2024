CREATE TABLE IF NOT EXISTS public.tipo_conta 
(
	id serial NOT NULL,
	descricao character varying(100) NOT NULL,
	tipo character varying(10),
	constraint tipos_pkey PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS public.receitas
(
	id serial not null,
	data_hora timestamp without time zone not null,
	historico character varying(100) not null,
	valor float not null default 0.00,
	tipo_id integer,
	constraint receitas_pkey PRIMARY KEY (id),
	constraint tipo_receitas FOREIGN KEY (tipo_id)
		references public.tipo_conta (id) match simple
		on delete no action
		on update no action
	
);

CREATE TABLE IF NOT EXISTS public.despesas
(
	id serial not null,
	data_hora timestamp without time zone not null,
	vencimento timestamp without time zone not null,
	historico character varying(100) not null,
	valor float not null default 0.00,
	tipo_id integer,
	status character varying(100) not null,
	CONSTRAINT despesas_pkey PRIMARY KEY (id),
	constraint tipo_despesas FOREIGN KEY (tipo_id)
		references public.tipo_conta (id) match simple
		on delete no action
		on update no action
	
)
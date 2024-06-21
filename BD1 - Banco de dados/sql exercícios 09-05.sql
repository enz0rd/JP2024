-- 1. inserir registros

-- Usuários
insert into usuarios 
(email, senha, nome_usuario, nome, telefone, bio) 
values
('enzo@email.com', '123', 'enz0rd', 'Enzo Rossi Daltoé', '49999579883', 'Fullstack developer | Working for Bright Cloud and Gdoor Zucchetti'),
('carlos@email.com', '1111', 'carlaocomputers', 'Carlão da Computação', '49999999999', 'lerolerolero'),
('jon@jon.com.br', '123123', 'jonzin', 'Jonathan', '21999999999', 'sou fundador da bright'),
('gaucho@gdoor.com.br','riogrande', 'sougaucho', 'Luis gaúcho', '47999999999', 'do rio grande gauchesco brasileiro, dessa terra que eu amei desde guri');


-- Adicionar amigos/seguidores
insert into usuario_amigos 
(usuario_id, amigo_usuario_id)
values
(1, 2),(2, 1),(4,1),(1,4),(3,2),(2,4);

-- Adicionar Posts
insert into usuario_posts 
(usuario_id, legenda, media_url)
values
(4, 'nossa como eu amo o rio grande', 'https://instasenac.com.br/sougaucho/1'),
(4, 'saudades do fundo da grota', 'https://instasenac.com.br/sougaucho/2'),
(3, 'mim deem dinhero', 'https://instasenac.com.br/jonzin/1'),
(4, 'rio grande minha paixao', 'https://instasenac.com.br/sougaucho/3'),
(1, 'lalalalalalalalla to louco', 'https://instasenac.com.br/enz0rd/1'),
(1, 'uma dose de whisky', 'https://instasenac.com.br/enz0rd/2'),
(3, 'PQ ESSWE CADU NAO POSTA NADA???', 'https://instasenac.com.br/jonzin/2');

-- adicionar curtidas nos posts
insert into post_curtidas 
(post_id, usuario_id)
values
(1, 4), (2, 4), (4, 4), (3, 2), (1, 2), (2, 3), (3, 1), (3, 4), (5, 2), (5, 3), (5, 4);


-- 2. Buscar dados

-- buscar usuários
select * from usuarios;

-- buscar amigos dos usuarios
select u.nome_usuario from usuario_amigos ua 
join usuarios u on u.id = ua.amigo_usuario_id 
where ua.usuario_id = 1

-- buscar posts de um usuário
select u.nome_usuario, p.legenda, p.media_url from usuario_posts p
join usuarios u on u.id = p.usuario_id 
where p.usuario_id = 1

-- buscar curtidas no post
select p.id as id_post, u.nome as nome_usuario_curtiu from post_curtidas pc
join usuario_posts p on p.id = pc.post_id 
join usuarios u on u.id = pc.usuario_id 
where p.id = 3

-- buscar a quantidade de curtidas por post
select u.nome_usuario as usuario_post, p.legenda, count(pc.id) as qtd_curtidas from usuario_posts p
join usuarios u on u.id = p.usuario_id 
join post_curtidas pc on pc.post_id = p.id
group by u.nome_usuario, p.legenda
order by qtd_curtidas desc;

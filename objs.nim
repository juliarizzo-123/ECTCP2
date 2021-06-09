import utils

type
    Cliente* = ref object of RootObj  
        nome*:string 
        telefone*:string
        endereco*:string  
        modalidade*:string

    # Karate* = ref object of RootObj  
        altura*:int
        cordafaixa*:string

    # Musculacao* = ref object of RootObj  
        peso*:float
        tipo*:string

    # Funcional* = ref object of RootObj  
        dieta*:string
        musica*:string




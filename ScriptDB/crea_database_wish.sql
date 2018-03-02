-- Crea 
-- le tabelle
-- le primary  key
-- i check constraint
-- le foreign key

CREATE TABLE argomenti (                                                                                           
    arg_id            INTEGER NOT NULL,                                                                            
    arg_descrizione   VARCHAR(100) NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE argomenti ADD CONSTRAINT argomenti_pk PRIMARY KEY ( arg_id );                                          
                                                                                                                   
CREATE TABLE categorie (                                                                                           
    cat_id            INTEGER NOT NULL,                                                                            
    cat_descrizione   VARCHAR(255) NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE categorie ADD CONSTRAINT categorie_pk PRIMARY KEY ( cat_id );                                          
                                                                                                                   
CREATE TABLE comuni (                                                                                              
    com_codice        VARCHAR(6 ) NOT NULL,                                                                   
    com_descrizione   VARCHAR(255 ),                                                                          
    com_provincia     VARCHAR(2 ),                                                                            
    com_cod_catasto   VARCHAR(4 )                                                                             
);                                                                                                                 
                                                                                                                   
ALTER TABLE comuni ADD CONSTRAINT comuni_pk PRIMARY KEY ( com_codice );                                            
                                                                                                                   
CREATE TABLE condizioni (                                                                                          
    con_id            INTEGER NOT NULL,                                                                            
    con_descrizione   VARCHAR(100) NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE condizioni ADD CONSTRAINT condizioni_pk PRIMARY KEY ( con_id );                                        
                                                                                                                   
CREATE TABLE lingue_parlate (                                                                                      
    lin_id            INTEGER NOT NULL,                                                                            
    lin_descrizione   VARCHAR(50 ) NOT NULL                                                                   
);                                                                                                                 
                                                                                                                   
ALTER TABLE lingue_parlate ADD CONSTRAINT lingue_parlate_pk PRIMARY KEY ( lin_id );                                
                                                                                                                   
CREATE TABLE paesi (                                                                                               
    pae_id            INTEGER NOT NULL,                                                                            
    pae_descrizione   VARCHAR(255 ) NOT NULL                                                                  
);                                                                                                                 
                                                                                                                   
ALTER TABLE paesi ADD CONSTRAINT paesi_pk PRIMARY KEY ( pae_id );                                                  
                                                                                                                   
CREATE TABLE prenotazioni (                                                                                        
    pre_id                    INTEGER NOT NULL,                                                                    
    pre_numero                VARCHAR(50 ) NOT NULL,                                                          
    pre_data                  DATE NOT NULL,                                                                       
    pre_num_adulti            NUMERIC(2) NOT NULL,                                                                  
    pre_num_bamb              NUMERIC(2) NOT NULL,                                                                  
    pre_checkout              DATE,                                                                                
    pre_prezzo                NUMERIC(7,2) NOT NULL,                                                                
    pre_commissioni           NUMERIC(7,2),                                                                         
    pre_checkin               DATE NOT NULL,                                                                       
    preventivi_pre_id         INTEGER NOT NULL,                                                                    
    utente_ute_id             INTEGER NOT NULL,                                                                    
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE prenotazioni ADD CONSTRAINT prenotazioni_pk PRIMARY KEY ( pre_id,                                      
preventivi_pre_id );                                                                                               
                                                                                                                   
CREATE TABLE prenotazioni_giudizi_esp (                                                                            
    giu_id                 INTEGER NOT NULL,                                                                       
    giu_staff              VARCHAR(1 ),                                                                       
    giu_servizi            VARCHAR(1 ),                                                                       
    giu_pulizia            VARCHAR(1 ),                                                                       
    giu_confort            VARCHAR(1 ),                                                                       
    giu_posizione          VARCHAR(1 ),                                                                       
    giu_qual_prez          VARCHAR(1 ),                                                                       
    pre_categoria          VARCHAR(2 ),                                                                       
    pre_commento           VARCHAR(250 ),                                                                     
    prenotazioni_pre_id    INTEGER NOT NULL,                                                                       
    prenotazioni_pre_id1   INTEGER NOT NULL                                                                        
);                                                                                                                 
                                                                                                                   
ALTER TABLE prenotazioni_giudizi_esp ADD CONSTRAINT prenotazioni_giudizi_esp_pk PRIMARY KEY ( giu_id );            
                                                                                                                   
CREATE TABLE preventivi (                                                                                          
    pre_id                    INTEGER NOT NULL,                                                                    
    pre_numero                VARCHAR(50 ) NOT NULL,                                                          
    pre_ric_data              DATE NOT NULL,                                                                       
    pre_ric_ora               VARCHAR(5 ) NOT NULL,                                                           
    pre_num_adulti            NUMERIC(2) NOT NULL,                                                                  
    pre_num_bamb              NUMERIC(2) NOT NULL,                                                                  
    pre_messaggio             VARCHAR(250 ),                                                                  
    utente_ute_id             INTEGER NOT NULL,                                                                    
    struttura_camere_cam_id   INTEGER NOT NULL,                                                                    
    pre_stato                 VARCHAR(2 ) NOT NULL,                                                           
    pre_risp_data             DATE,                                                                                
    pre_risp_ora              VARCHAR(5 ),                                                                    
    pre_prezzo_def            NUMERIC(7,2),                                                                         
    pre_commissioni           NUMERIC(7,2),                                                                         
    pre_mess_osp              VARCHAR(250 ),                                                                  
    pre_conf_rif_data         DATE,                                                                                
    pre_conf_rif_ora          VARCHAR(5 )                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE preventivi ADD CONSTRAINT preventivi_pk PRIMARY KEY ( pre_id );                                        
                                                                                                                   
CREATE TABLE struttura (                                                                                           
    str_id                      INTEGER NOT NULL,                                                                  
    str_descrizione             VARCHAR(255 ) NOT NULL,                                                       
    str_indirizzo               VARCHAR(255 ),                                                                
    str_stelle                  VARCHAR(1 ),                                                                  
    str_pms                     VARCHAR(20 ),                                                                 
    str_channel_manager         VARCHAR(20 ),                                                                 
    comuni_com_codice           VARCHAR(6 ) NOT NULL,                                                         
    struttura_pasti_spa_id      INTEGER NOT NULL,                                                                  
    struttura_attivita_sat_id   INTEGER NOT NULL,                                                                  
    str_iva                     NUMERIC(5,2)                                                                        
);                                                                                                                 
                                                                                                                   
CREATE UNIQUE INDEX struttura__idx ON                                                                              
    struttura ( struttura_attivita_sat_id ASC );                                                                   
                                                                                                                   
CREATE UNIQUE INDEX struttura__idxv1 ON                                                                            
    struttura ( struttura_pasti_spa_id ASC );                                                                      
                                                                                                                   
ALTER TABLE struttura ADD CONSTRAINT struttura_pk PRIMARY KEY ( str_id );                                          
                                                                                                                   
CREATE TABLE struttura_accoglienza (                                                                               
    sac_id             INTEGER NOT NULL,                                                                           
    sac_bigl_spett     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_aree_comuni    NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_arr_esterni    NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_area_pic       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_zona_cam       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_giardino       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_terrazza       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_terrazza_sol   NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_cucina_com     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_sala_comune    NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_sala_giochi    NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_biblioteca     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sac_cappella       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    struttura_str_id   INTEGER NOT NULL                                                                            
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_bigl_spett IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_aree_comuni IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_arr_esterni IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_area_pic IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_zona_cam IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_giardino IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_terrazza IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_terrazza_sol IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_cucina_com IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_sala_comune IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_sala_giochi IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_biblioteca IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CHECK ( sac_cappella IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_accoglienza ADD CONSTRAINT struttura_accoglienza_pk PRIMARY KEY ( sac_id );                  
                                                                                                                   
CREATE TABLE struttura_attivita (                                                                                  
    sat_id                      INTEGER NOT NULL,                                                                  
    sat_attr_tennis             NUMERIC(1) DEFAULT 0,                                                               
    sat_badminton               NUMERIC(1) DEFAULT 0,                                                               
    sat_spiaggia                NUMERIC(1) DEFAULT 0,                                                               
    sat_campo_tennis            NUMERIC(1) DEFAULT 0,                                                               
    sat_biliardo                NUMERIC(1) DEFAULT 0,                                                               
    sat_ping_pong               NUMERIC(1) DEFAULT 0,                                                               
    sat_freccette               NUMERIC(1) DEFAULT 0,                                                               
    sat_squash                  NUMERIC(1) DEFAULT 0,                                                               
    sat_bowling                 NUMERIC(1) DEFAULT 0,                                                               
    sat_minigolf                NUMERIC(1) DEFAULT 0,                                                               
    sat_parco_acquatico         NUMERIC(1) DEFAULT 0,                                                               
    sat_immersioni              NUMERIC(1) DEFAULT 0,                                                               
    sat_campo_golf              NUMERIC(1) DEFAULT 0,                                                               
    sat_windsurf                NUMERIC(1) DEFAULT 0,                                                               
    sat_snorkeling              NUMERIC(1) DEFAULT 0,                                                               
    sat_attrez_sport_acq        NUMERIC(1) DEFAULT 0,                                                               
    sat_canoa                   NUMERIC(1) DEFAULT 0,                                                               
    sat_pesca                   NUMERIC(1) DEFAULT 0,                                                               
    sat_equitazione             NUMERIC(1) DEFAULT 0,                                                               
    sat_escursionismo           NUMERIC(1) DEFAULT 0,                                                               
    sat_sci                     NUMERIC(1) DEFAULT 0,                                                               
    sat_escursione_bicicletta   NUMERIC(1) DEFAULT 0,                                                               
    struttura_str_id            INTEGER NOT NULL                                                                   
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_attr_tennis IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_badminton IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_spiaggia IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_campo_tennis IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_biliardo IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_ping_pong IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_freccette IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_squash IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_bowling IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_minigolf IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_parco_acquatico IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_immersioni IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_campo_golf IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_windsurf IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_snorkeling IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_attrez_sport_acq IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_canoa IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_pesca IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_equitazione IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_escursionismo IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_sci IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_attivita                                                                                     
    ADD CHECK ( sat_escursione_bicicletta IN (                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
CREATE UNIQUE INDEX struttura_attivita__idx ON                                                                     
    struttura_attivita ( struttura_str_id ASC );                                                                   
                                                                                                                   
ALTER TABLE struttura_attivita ADD CONSTRAINT struttura_attivita_pk PRIMARY KEY ( sat_id );                        
                                                                                                                   
CREATE TABLE struttura_camere (                                                                                    
    cam_id                     INTEGER NOT NULL,                                                                   
    cam_nome                   VARCHAR(255 ) NOT NULL,                                                        
    cam_fumatori               NUMERIC(1) DEFAULT 0 NOT NULL,                                                       
    cam_capienza               NUMERIC(1) NOT NULL,                                                                 
    struttura_str_id           INTEGER NOT NULL,                                                                   
    cam_dim_qta                NUMERIC(2),                                                                          
    cam_dim_um                 VARCHAR(3 ),                                                                   
    tipologia_camere_tpc_id1   INTEGER NOT NULL,                                                                   
    tipologia_camere_tpc_id    INTEGER NOT NULL                                                                    
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere                                                                                       
    ADD CHECK ( cam_fumatori IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere ADD CONSTRAINT struttura_camere_pk PRIMARY KEY ( cam_id );                            
                                                                                                                   
CREATE TABLE struttura_camere_accessibilita (                                                                      
    sca_id                    INTEGER NOT NULL,                                                                    
    sca_ascensore             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sca_piano_ter             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sca_sedia_rot             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sca_piani_sup_asc         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sca_piani_sup_scale       NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sca_edif_indip            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sca_app_priv              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sca_semi_ind              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_ascensore IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_piano_ter IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_sedia_rot IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_piani_sup_asc IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_piani_sup_scale IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_edif_indip IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_app_priv IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CHECK ( sca_semi_ind IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
--  ERROR: PK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_accessibilita ADD CONSTRAINT struttura_camere_accessibilita_pk PRIMARY KEY ( sca_id );
                                                                                                                   
CREATE TABLE struttura_camere_aper_chiu (                                                                          
    sac_id                    INTEGER NOT NULL,                                                                    
    sac_data_inizio           DATE NOT NULL,                                                                       
    sac_data_fine             DATE,                                                                                
    sac_lunedi                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sac_martedi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sac_mercoledi             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sac_giovedi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sac_venerdi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sac_sabato                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sac_domenica              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    categorie_cat_id          INTEGER NOT NULL,                                                                    
    struttura_str_id          INTEGER NOT NULL,                                                                    
    tipologia_camere_tpc_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CHECK ( sac_lunedi IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CHECK ( sac_martedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CHECK ( sac_mercoledi IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CHECK ( sac_giovedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CHECK ( sac_venerdi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CHECK ( sac_sabato IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CHECK ( sac_domenica IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_aper_chiu ADD CONSTRAINT struttura_camere_aper_chiu_pk PRIMARY KEY ( sac_id );        
                                                                                                                   
CREATE TABLE struttura_camere_bagni (                                                                              
    scb_id                    INTEGER NOT NULL,                                                                    
    scb_bagno_priv            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_bagno_com             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_carta_igi             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_vasca_dis             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_camp_emergenza        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_wc_rialzato           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_lavabo_basso          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_sedia_doccia          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_doccia_per_rotelle    NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_cabina_doccia         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_wc_maniglioni         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_bidet                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_vasca                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_vasca_doccia          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_accappatoio           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_prod_da_bagno         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_serv_igie_agg         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_asciugacap            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_vasca_con_idro        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_serv_igie_com         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_sauna                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_doccia                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_pantofole             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_wc                    NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_bagno_agg             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_spazzolino            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_shampo                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_balsamo               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_bagnoschiuma          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scb_cuffia                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_bagno_priv IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_bagno_com IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_carta_igi IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_vasca_dis IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_camp_emergenza IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_wc_rialzato IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_lavabo_basso IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_sedia_doccia IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_doccia_per_rotelle IN (                                                                        
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_cabina_doccia IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_wc_maniglioni IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_bidet IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_vasca IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_vasca_doccia IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_accappatoio IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_prod_da_bagno IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_serv_igie_agg IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_asciugacap IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_vasca_con_idro IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_serv_igie_com IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_sauna IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_doccia IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_pantofole IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_wc IN (                                                                                        
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_bagno_agg IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_spazzolino IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_shampo IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_balsamo IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_bagnoschiuma IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CHECK ( scb_cuffia IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_bagni ADD CONSTRAINT struttura_camere_bagni_pk PRIMARY KEY ( scb_id );                
                                                                                                                   
CREATE TABLE struttura_camere_dotazioni (                                                                          
    scd_id                    INTEGER NOT NULL,                                                                    
    scd_lettini_culle         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pisc_vista            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_appendiabiti          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pisc_ultimo_piano     NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_stendibianc           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pisc_salata           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_letto_pieg            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_zona_acqua_bas        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_divano_let            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_area_cond             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pattumiere            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pisc_uso_escl         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pisc_riscald          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_asciugatrice          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pisc_sfioro           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_armadio               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_copert_pisc           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_moquette              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_teli                  NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_cab_armadio           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_vasc_imm_fred         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_letti_lung            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_asciug_pisc           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_ventilatore           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_camino                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_ingresso_ind          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_riscaldameno          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_cassaforte            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_disp_cam_comunic      NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_divano                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_ferro_stiro           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_insonorizzazione      NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_asse_da_stiro         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_zona_giorn            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_vasca_idro            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_stirapant             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_zanzariera            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_lavatrice             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pavim_marmo           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_parquet               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_scrivania             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_pigiama               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_sol_anallergiche      NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_presa_letto           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_prod_pulizie          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_adattatore            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_coperte_elet          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_cuscino_piume         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_cuscino_no_piume      NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scd_cuscino_ipo           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_lettini_culle IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pisc_vista IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_appendiabiti IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pisc_ultimo_piano IN (                                                                         
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_stendibianc IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pisc_salata IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_letto_pieg IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_zona_acqua_bas IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_divano_let IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_area_cond IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pattumiere IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pisc_uso_escl IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pisc_riscald IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_asciugatrice IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pisc_sfioro IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_armadio IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_copert_pisc IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_moquette IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_teli IN (                                                                                      
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_cab_armadio IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_vasc_imm_fred IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_letti_lung IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_asciug_pisc IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_ventilatore IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_camino IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_ingresso_ind IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_riscaldameno IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_cassaforte IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_disp_cam_comunic IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_divano IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_ferro_stiro IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_insonorizzazione IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_asse_da_stiro IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_zona_giorn IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_vasca_idro IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_stirapant IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_zanzariera IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_lavatrice IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pavim_marmo IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_parquet IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_scrivania IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_pigiama IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_sol_anallergiche IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_presa_letto IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_prod_pulizie IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_adattatore IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_coperte_elet IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_cuscino_piume IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_cuscino_no_piume IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CHECK ( scd_cuscino_ipo IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_dotazioni ADD CONSTRAINT struttura_camere_dotazioni_pk PRIMARY KEY ( scd_id );        
                                                                                                                   
CREATE TABLE struttura_camere_est_vista (                                                                          
    sce_id                    INTEGER NOT NULL,                                                                    
    sce_balcone               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_patio                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_terrazza              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_citta           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_giard           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_lago            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_luogo           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_montagna        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_piscina               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_fiume           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_mare            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_cortile         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sce_vista_strada          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_balcone IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_patio IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_terrazza IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_citta IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_giard IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_lago IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_luogo IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_montagna IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_piscina IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_fiume IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_mare IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_cortile IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CHECK ( sce_vista_strada IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_est_vista ADD CONSTRAINT struttura_camere_est_vista_pk PRIMARY KEY ( sce_id );        
                                                                                                                   
CREATE TABLE struttura_camere_foto (                                                                               
    fot_id                    INTEGER NOT NULL,                                                                    
    fot_foto                  bytea,                                                                                
    struttura_camere_cam_id   INTEGER NOT NULL,                                                                    
    fot_descrizione           VARCHAR(255 )                                                                   
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_foto ADD CONSTRAINT struttura_camere_foto_pk PRIMARY KEY ( fot_id );                  
                                                                                                                   
CREATE TABLE struttura_camere_intratt (                                                                            
    sci_id                    INTEGER NOT NULL,                                                                    
    sci_canc_bambini          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sci_giochi_tav            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sci_libri                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sci_copriprese            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_intratt                                                                               
    ADD CHECK ( sci_canc_bambini IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_intratt                                                                               
    ADD CHECK ( sci_giochi_tav IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_intratt                                                                               
    ADD CHECK ( sci_libri IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_intratt                                                                               
    ADD CHECK ( sci_copriprese IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_intratt ADD CONSTRAINT struttura_camere_intratt_pk PRIMARY KEY ( sci_id );            
                                                                                                                   
CREATE TABLE struttura_camere_letti (                                                                              
    scl_id                    INTEGER NOT NULL,                                                                    
    scl_tipologia             VARCHAR(3 ) NOT NULL,                                                           
    scl_quantita              NUMERIC(1) NOT NULL,                                                                  
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_letti ADD CONSTRAINT struttura_camere_letti_pk PRIMARY KEY ( scl_id );                
                                                                                                                   
CREATE TABLE struttura_camere_promozioni (                                                                         
    pro_id                        INTEGER NOT NULL,                                                                
    pro_nome                      VARCHAR(255),                                                                   
    pro_sconto                    NUMERIC(7,2),                                                                     
    pro_tariffe_pertinenza        INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_camere_pertinenza         INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_data_validita_inzio       DATE NOT NULL,                                                                   
    pro_data_validita_fine        DATE,                                                                            
    pro_lunedi                    INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_martedi                   INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_mercoledi                 INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_giovedi                   INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_venerdi                   INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_sabato                    INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_domenica                  INTEGER DEFAULT 0 NOT NULL,                                                      
    pro_non_rimborsabile          DATE,                                                                            
    pro_visibilita_sito           DATE,                                                                            
    pro_orario                    VARCHAR(5),                                                                     
    pro_carta_obb                 INTEGER DEFAULT 0 NOT NULL,                                                      
    struttura_camere_cam_id       INTEGER NOT NULL,                                                                
    tipologia_promozione_tpp_id   INTEGER NOT NULL,                                                                
    visibilita_vis_id             INTEGER NOT NULL                                                                 
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_tariffe_pertinenza IN (                                                                        
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_camere_pertinenza IN (                                                                         
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_lunedi IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_martedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_mercoledi IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_giovedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_venerdi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_sabato IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_domenica IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CHECK ( pro_carta_obb IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_promozioni ADD CONSTRAINT struttura_camere_promozioni_pk PRIMARY KEY ( pro_id );      
                                                                                                                   
CREATE TABLE struttura_camere_ristorazione (                                                                       
    scr_id                    INTEGER NOT NULL,                                                                    
    scr_zona_pran             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_tavolo_pran           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_calici_vin            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_bottiglia_acq         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_bott_acq_cam          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_cioccolatini          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_biscotti              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_ciocc_bisc_cam        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_frutta                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_frutta_cam            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_vino_champ            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_vino_champ_str        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_barbecue              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_forno                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_piano_cott            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_tostapane             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_lavatov               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_bollitore_elet        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_zona_pran_aper        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_arred_est             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_minibar               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_cucina                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_ang_cott              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_utensili_cuc          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_microonde             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_frigorifero           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_macc_caffe            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_bollitore             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_seggiolone            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_serv_extra            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_acc_executive         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_sveglia               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_sveglia_tel           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_svelia_o_tel          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_biancheria_casa       NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_asciug_lenz_pag       NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    scr_asciugamani           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_zona_pran IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_tavolo_pran IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_calici_vin IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_bottiglia_acq IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_bott_acq_cam IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_cioccolatini IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_biscotti IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_ciocc_bisc_cam IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_frutta IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_frutta_cam IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_vino_champ IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_vino_champ_str IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_barbecue IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_forno IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_piano_cott IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_tostapane IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_lavatov IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_bollitore_elet IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_zona_pran_aper IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_arred_est IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_minibar IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_cucina IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_ang_cott IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_utensili_cuc IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_microonde IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_frigorifero IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_macc_caffe IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_bollitore IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_seggiolone IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_serv_extra IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_acc_executive IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_sveglia IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_sveglia_tel IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_svelia_o_tel IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_biancheria_casa IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_asciug_lenz_pag IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CHECK ( scr_asciugamani IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
--  ERROR: PK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_ristorazione ADD CONSTRAINT struttura_camere_ristorazione_pk PRIMARY KEY ( scr_id );  
                                                                                                                   
CREATE TABLE struttura_camere_tecnologia (                                                                         
    sct_id                    INTEGER NOT NULL,                                                                    
    sct_ps4                   NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_wii_u                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_xbox_one              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_computer              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_console_video         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_nintendo_wii          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_ps2                   NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_ps3                   NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_xbox360               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_portatile             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_ipad                  NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_canali_cavo           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_lettore_cd            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_lettore_dvd           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_fax                   NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_docking               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_cassaforte_port       NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_tv_piatta             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_canali_ppv            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_radio                 NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_canali_sat            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_telefono              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_tv                    NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_videoregistr          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_videogiochi           NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_lettore_blur          NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_wifi_portatile        NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_smartphone            NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    sct_streaming             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    struttura_camere_cam_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_ps4 IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_wii_u IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_xbox_one IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_computer IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_console_video IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_nintendo_wii IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_ps2 IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_ps3 IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_xbox360 IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_portatile IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_ipad IN (                                                                                      
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_canali_cavo IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_lettore_cd IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_lettore_dvd IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_fax IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_docking IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_cassaforte_port IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_tv_piatta IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_canali_ppv IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_radio IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_canali_sat IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_telefono IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_tv IN (                                                                                        
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_videoregistr IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_videogiochi IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_lettore_blur IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_wifi_portatile IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_smartphone IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CHECK ( sct_streaming IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_camere_tecnologia ADD CONSTRAINT struttura_camere_tecnologia_pk PRIMARY KEY ( sct_id );      
                                                                                                                   
CREATE TABLE struttura_cond_alternative (                                                                          
    sca_id                  INTEGER NOT NULL,                                                                      
    sca_ospita_bamb         NUMERIC(1) DEFAULT 0,                                                                   
    sca_bamb_in_letti       NUMERIC(1) DEFAULT 0,                                                                   
    sca_letti_agg           NUMERIC(1) DEFAULT 0,                                                                   
    scp_internet            VARCHAR(3 ),                                                                      
    scp_parcheggio          VARCHAR(3 ),                                                                      
    scp_animali             VARCHAR(3 ),                                                                      
    scp_checkin_dalle       VARCHAR(5 ),                                                                      
    scp_checkin_alle        VARCHAR(5 ),                                                                      
    scp_checkout_dalle      VARCHAR(5 ),                                                                      
    scp_checkout_alle       VARCHAR(5 ),                                                                      
    sca_pren_no_indirizzo   NUMERIC(1) DEFAULT 0,                                                                   
    sca_pren_no_tel         NUMERIC(1) DEFAULT 0,                                                                   
    struttura_str_id        INTEGER NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_cond_alternative                                                                             
    ADD CHECK ( sca_ospita_bamb IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_alternative                                                                             
    ADD CHECK ( sca_bamb_in_letti IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_alternative                                                                             
    ADD CHECK ( sca_letti_agg IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_alternative                                                                             
    ADD CHECK ( sca_pren_no_indirizzo IN (                                                                         
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_alternative                                                                             
    ADD CHECK ( sca_pren_no_tel IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_alternative ADD CONSTRAINT struttura_cond_alternative_pk PRIMARY KEY ( sca_id );        
                                                                                                                   
CREATE TABLE struttura_cond_cancel (                                                                               
    scc_id                 INTEGER NOT NULL,                                                                       
    scc_canc_gratuita      NUMERIC(1) DEFAULT 0,                                                                    
    scc_tempor_canc        NUMERIC(1) DEFAULT 0,                                                                    
    scc_pag_anticip        NUMERIC(1) DEFAULT 0,                                                                    
    scc_non_rimborsabile   NUMERIC(1) DEFAULT 0,                                                                    
    scc_attivo             NUMERIC(1) DEFAULT 0,                                                                    
    struttura_str_id       INTEGER NOT NULL,                                                                       
    scc_tempo_prima        VARCHAR(3 ),                                                                       
    scc_add_oltre_limite   VARCHAR(3 ),                                                                       
    scc_add_mac_prese      VARCHAR(3 ),                                                                       
    scc_periodo_toll       VARCHAR(3 )                                                                        
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_cond_cancel                                                                                  
    ADD CONSTRAINT check_0_1 CHECK ( scc_canc_gratuita IN (                                                        
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_cancel                                                                                  
    ADD CHECK ( scc_tempor_canc IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_cancel                                                                                  
    ADD CHECK ( scc_pag_anticip IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_cancel                                                                                  
    ADD CHECK ( scc_non_rimborsabile IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_cancel                                                                                  
    ADD CHECK ( scc_attivo IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_cancel ADD CONSTRAINT struttura_cond_cancel_pk PRIMARY KEY ( scc_id );                  
                                                                                                                   
CREATE TABLE struttura_cond_pagamento (                                                                            
    scp_id                     INTEGER NOT NULL,                                                                   
    scp_accetta_carte          NUMERIC(1) DEFAULT 0,                                                                
    scp_american_express       NUMERIC(1) DEFAULT 0,                                                                
    scp_mastercard             NUMERIC(1) DEFAULT 0,                                                                
    scp_jcb                    NUMERIC(1) DEFAULT 0,                                                                
    scp_discover               NUMERIC(1) DEFAULT 0,                                                                
    scp_cartasi                NUMERIC(1) DEFAULT 0,                                                                
    scp_unionpay               NUMERIC(1) DEFAULT 0,                                                                
    scp_visa                   NUMERIC(1) DEFAULT 0,                                                                
    scp_maestro                NUMERIC(1) DEFAULT 0,                                                                
    scp_diners                 NUMERIC(1) DEFAULT 0,                                                                
    scp_pin                    NUMERIC(1) DEFAULT 0,                                                                
    scp_pren_no_carta_connaz   NUMERIC(1) DEFAULT 0,                                                                
    scp_pag_online             NUMERIC(1) DEFAULT 0,                                                                
    scp_imp_last_minut         VARCHAR(3 ),                                                                   
    scp_attivo                 NUMERIC(1) DEFAULT 0,                                                                
    struttura_str_id           INTEGER NOT NULL                                                                    
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_accetta_carte IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_american_express IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_mastercard IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_jcb IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_discover IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_cartasi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_unionpay IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_visa IN (                                                                                      
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_maestro IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_diners IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_pin IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_pren_no_carta_connaz IN (                                                                      
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_pag_online IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CHECK ( scp_attivo IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_cond_pagamento ADD CONSTRAINT struttura_cond_pagamento_pk PRIMARY KEY ( scp_id );            
                                                                                                                   
CREATE TABLE struttura_costi_agg (                                                                                 
    sca_id             INTEGER NOT NULL,                                                                           
    sca_dep_cauzion    NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sca_tipo_costo     VARCHAR(3 ) NOT NULL,                                                                  
    sca_inc_prezzo     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    sca_importo        NUMERIC(7,2) NOT NULL,                                                                       
    sca_tipo_pag       VARCHAR(3 ) NOT NULL,                                                                  
    struttura_str_id   INTEGER NOT NULL                                                                            
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_costi_agg                                                                                    
    ADD CONSTRAINT check_0_1 CHECK ( sca_dep_cauzion IN (                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_costi_agg                                                                                    
    ADD CHECK ( sca_inc_prezzo IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_costi_agg ADD CONSTRAINT struttura_costi_agg_pk PRIMARY KEY ( sca_id,                        
struttura_str_id );                                                                                                
                                                                                                                   
CREATE TABLE struttura_dati_extra (                                                                                
    str_data_inizio_attivita   DATE,                                                                               
    str_data_costruzione       DATE,                                                                               
    str_data_ultima_ristr      DATE,                                                                               
    str_abit_privata           NUMERIC(1) DEFAULT 0,                                                                
    struttura_str_id           INTEGER NOT NULL                                                                    
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_dati_extra                                                                                   
    ADD CONSTRAINT check_0_1 CHECK ( str_abit_privata IN (                                                         
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
CREATE TABLE struttura_dintorni (                                                                                  
    sdi_id                      INTEGER NOT NULL,                                                                  
    sdi_nome                    VARCHAR(255 ) NOT NULL,                                                       
    sdi_distanza_mt             NUMERIC(5) NOT NULL,                                                                
    struttura_str_id            INTEGER NOT NULL,                                                                  
    tipologia_dintorni_din_id   INTEGER NOT NULL                                                                   
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_dintorni ADD CONSTRAINT struttura_dintorni_pk PRIMARY KEY ( sdi_id );                        
                                                                                                                   
CREATE TABLE struttura_foto (                                                                                      
    fot_id             INTEGER NOT NULL,                                                                           
    fot_foto           bytea,                                                                                       
    struttura_str_id   INTEGER NOT NULL,                                                                           
    fot_descrizione    VARCHAR(255),                                                                              
    fot_principale     NUMERIC(1) DEFAULT 0 NOT NULL                                                                
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_foto                                                                                         
    ADD CONSTRAINT check_0_1 CHECK ( fot_principale IN (                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_foto ADD CONSTRAINT struttura_foto_pk PRIMARY KEY ( fot_id );                                
                                                                                                                   
CREATE TABLE struttura_indicazioni (                                                                               
    ind_id             INTEGER NOT NULL,                                                                           
    ind_partenza       VARCHAR(50 ),                                                                          
    ind_indicazione    VARCHAR(250) NOT NULL,                                                                     
    struttura_str_id   INTEGER NOT NULL                                                                            
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_indicazioni ADD CONSTRAINT struttura_indicazioni_pk PRIMARY KEY ( ind_id );                  
                                                                                                                   
CREATE TABLE struttura_intrattenimento (                                                                           
    sin_id                 INTEGER NOT NULL,                                                                       
    sin_giochi_tav         NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    sin_libri              NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    sin_area_gio_coperto   NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    sin_area_gio_aperto    NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    sin_canc_sicurezza     NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    sin_tv_bambini         NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    sin_passeggini         NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    struttura_str_id       INTEGER NOT NULL                                                                        
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CHECK ( sin_giochi_tav IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CHECK ( sin_libri IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CHECK ( sin_area_gio_coperto IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CHECK ( sin_area_gio_aperto IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CHECK ( sin_canc_sicurezza IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CHECK ( sin_tv_bambini IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CHECK ( sin_passeggini IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_intrattenimento ADD CONSTRAINT struttura_intrattenimento_pk PRIMARY KEY ( sin_id );          
                                                                                                                   
CREATE TABLE struttura_lingue (                                                                                    
    sli_id                  INTEGER NOT NULL,                                                                      
    struttura_str_id        INTEGER NOT NULL,                                                                      
    lingue_parlate_lin_id   INTEGER NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_lingue ADD CONSTRAINT struttura_lingue_pk PRIMARY KEY ( sli_id );                            
                                                                                                                   
CREATE TABLE struttura_messaggi (                                                                                  
    mes_id                  INTEGER NOT NULL,                                                                      
    mes_struttura           VARCHAR(250 ) NOT NULL,                                                           
    mes_ospite              VARCHAR(250 ) NOT NULL,                                                           
    mes_indicazioni         VARCHAR(250 ),                                                                    
    mes_valore_agg          VARCHAR(250 ),                                                                    
    struttura_str_id        INTEGER NOT NULL,                                                                      
    lingue_parlate_lin_id   INTEGER NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_messaggi ADD CONSTRAINT struttura_messaggi_pk PRIMARY KEY ( mes_id );                        
                                                                                                                   
CREATE TABLE struttura_pasti (                                                                                     
    spa_id                   INTEGER NOT NULL,                                                                     
    spa_offre_col_pra_cen    NUMERIC(1) DEFAULT 0,                                                                  
    spa_colazione_inclusa    NUMERIC(1) DEFAULT 0,                                                                  
    spa_vendo_pasti_online   NUMERIC(1) DEFAULT 0,                                                                  
    spe_prezzo_col_online    NUMERIC(7,2),                                                                          
    spe_prezzo_par_online    NUMERIC(7,2),                                                                          
    spe_prezzo_cen_online    NUMERIC(7,2),                                                                          
    spa_col_americana        NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_senza_glutine    NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_vegetariana      NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_asiatica         NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_halal            NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_vegana           NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_buffet           NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_italiana         NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_inglese          NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_continentale     NUMERIC(1) DEFAULT 0,                                                                  
    spa_col_koser            NUMERIC(1) DEFAULT 0,                                                                  
    struttura_str_id         INTEGER NOT NULL                                                                      
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CONSTRAINT check_0_1 CHECK ( spa_offre_col_pra_cen IN (                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_colazione_inclusa IN (                                                                         
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_vendo_pasti_online IN (                                                                        
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_americana IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_senza_glutine IN (                                                                         
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_vegetariana IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_asiatica IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_halal IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_vegana IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_buffet IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_italiana IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_inglese IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_continentale IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CHECK ( spa_col_koser IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
CREATE UNIQUE INDEX struttura_pasti__idx ON                                                                        
    struttura_pasti ( struttura_str_id ASC );                                                                      
                                                                                                                   
ALTER TABLE struttura_pasti ADD CONSTRAINT struttura_pasti_pk PRIMARY KEY ( spa_id );                              
                                                                                                                   
CREATE TABLE struttura_piscine (                                                                                   
    spi_id                  INTEGER NOT NULL,                                                                      
    spi_scivolo             NUMERIC(1) NOT NULL,                                                                    
    spi_spa                 NUMERIC(1) NOT NULL,                                                                    
    spi_teli                NUMERIC(1) NOT NULL,                                                                    
    spi_bagno_turco         NUMERIC(1) NOT NULL,                                                                    
    spi_lettini             NUMERIC(1) NOT NULL,                                                                    
    spi_area_relax          NUMERIC(1) NOT NULL,                                                                    
    spi_ombrelloni          NUMERIC(1) NOT NULL,                                                                    
    spi_pediluvio           NUMERIC(1) NOT NULL,                                                                    
    spi_servizi_bellezza    NUMERIC(1) NOT NULL,                                                                    
    spi_pacchetti_spa       NUMERIC(1) NOT NULL,                                                                    
    spi_poltra_massag       NUMERIC(1) NOT NULL,                                                                    
    spi_fitness             NUMERIC(1) NOT NULL,                                                                    
    spi_lezioni_yoga        NUMERIC(1) NOT NULL,                                                                    
    spi_lezioni_fitness     NUMERIC(1) NOT NULL,                                                                    
    spi_personal_trainer    NUMERIC(1) NOT NULL,                                                                    
    spi_piscina_bamb        NUMERIC(1) NOT NULL,                                                                    
    spi_armadietti_spa      NUMERIC(1) NOT NULL,                                                                    
    spi_piscina             NUMERIC(1) NOT NULL,                                                                    
    spi_giochi_acqua        NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_ultimo_piano   NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_sfioro         NUMERIC(1) NOT NULL,                                                                    
    spi_riscaldata          NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_vista          NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_salata         NUMERIC(1) NOT NULL,                                                                    
    spi_vasca_imm_fredda    NUMERIC(1) NOT NULL,                                                                    
    spi_bar_bordo           NUMERIC(1) NOT NULL,                                                                    
    spi_recinto             NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_coperta        NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_coperta_stag   NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_coperta_anno   NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_aperto         NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_aperto_stag    NUMERIC(1) NOT NULL,                                                                    
    spi_pisc_aperto_anno    NUMERIC(1) NOT NULL,                                                                    
    spi_costo               NUMERIC(7,2) NOT NULL,                                                                  
    struttura_str_id        INTEGER NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_piscine ADD CONSTRAINT struttura_piscine_pk PRIMARY KEY ( spi_id );                          
                                                                                                                   
CREATE TABLE struttura_pulizie (                                                                                   
    spu_id              INTEGER NOT NULL,                                                                          
    spu_lav_secco       NUMERIC(1) DEFAULT 0 NOT NULL,                                                              
    spu_serv_stireria   NUMERIC(1) DEFAULT 0 NOT NULL,                                                              
    spu_serv_lavand     NUMERIC(1) DEFAULT 0 NOT NULL,                                                              
    spu_serv_giorn      NUMERIC(1) DEFAULT 0 NOT NULL,                                                              
    spu_lustrascarpe    NUMERIC(1) DEFAULT 0 NOT NULL,                                                              
    spu_stira_pant      NUMERIC(1) DEFAULT 0 NOT NULL,                                                              
    struttura_str_id    INTEGER NOT NULL                                                                           
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_pulizie                                                                                      
    ADD CHECK ( spu_lav_secco IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pulizie                                                                                      
    ADD CHECK ( spu_serv_stireria IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pulizie                                                                                      
    ADD CHECK ( spu_serv_lavand IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pulizie                                                                                      
    ADD CHECK ( spu_serv_giorn IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pulizie                                                                                      
    ADD CHECK ( spu_lustrascarpe IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pulizie                                                                                      
    ADD CHECK ( spu_stira_pant IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_pulizie ADD CONSTRAINT struttura_pulizie_pk PRIMARY KEY ( spu_id );                          
                                                                                                                   
CREATE TABLE struttura_restrizioni (                                                                               
    res_id                    INTEGER NOT NULL,                                                                    
    res_data_inizio           DATE NOT NULL,                                                                       
    res_data_fine             DATE,                                                                                
    res_lunedi                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_martedi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_mercoledi             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_giovedi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_venerdi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_sabato                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_domenica              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_soggiorno_minimo      NUMERIC(3),                                                                           
    res_chiuso_arrivo         NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    res_chiuso_partenza       NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    categorie_cat_id          INTEGER NOT NULL,                                                                    
    tipologia_camere_tpc_id   INTEGER NOT NULL,                                                                    
    struttura_str_id          INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_lunedi IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_martedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_mercoledi IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_giovedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_venerdi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_sabato IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_domenica IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_chiuso_arrivo IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CHECK ( res_chiuso_partenza IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_restrizioni ADD CONSTRAINT struttura_restrizioni_pk PRIMARY KEY ( res_id );                  
                                                                                                                   
CREATE TABLE struttura_ristorazione (                                                                              
    sri_id                  INTEGER NOT NULL,                                                                      
    sri_pasti_bambini       NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_a_la_carte          NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_buffet_bambini      NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_buffet              NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_vini                NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_acqua               NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_snack_bar           NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_frutta              NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_spesa_dom           NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_cioccolatini        NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_barbecue            NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_dist_auto_bev       NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_serv_camera         NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_dit_auto_snack      NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_col_camera          NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_menu_diete          NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_nome_rist           VARCHAR(50 ) NOT NULL,                                                            
    sri_tipo_menu           VARCHAR(3 ) NOT NULL,                                                             
    sri_solo_ospiti         NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_prenotazione        NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_posti_aperto        NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_cucinia             VARCHAR(3 ) NOT NULL,                                                             
    sri_opioni_dietetiche   VARCHAR(3 ) NOT NULL,                                                             
    sri_atmosfera           VARCHAR(3 ) NOT NULL,                                                             
    sri_aperto_col          NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_aperto_brunch       NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_aperto_aperitivo    NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_aperto_hightea      NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_aperto_cena         NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_aperto_pranzo       NUMERIC(1) DEFAULT 0 NOT NULL,                                                          
    sri_giorno_apertura     VARCHAR(3 ) NOT NULL,                                                             
    sri_aperto_dalle        VARCHAR(5 ) NOT NULL,                                                             
    sri_aperto_alle         VARCHAR(5 ) NOT NULL,                                                             
    struttura_str_id        INTEGER NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_pasti_bambini IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_a_la_carte IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_buffet_bambini IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_buffet IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_vini IN (                                                                                      
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_acqua IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_snack_bar IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_frutta IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_spesa_dom IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_cioccolatini IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_barbecue IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_dist_auto_bev IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_serv_camera IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_dit_auto_snack IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_col_camera IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_menu_diete IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_solo_ospiti IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_prenotazione IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_posti_aperto IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_aperto_col IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_aperto_brunch IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_aperto_aperitivo IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_aperto_hightea IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_aperto_cena IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CHECK ( sri_aperto_pranzo IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_ristorazione ADD CONSTRAINT struttura_ristorazione_pk PRIMARY KEY ( sri_id );                
                                                                                                                   
CREATE TABLE struttura_servizi_albergo (                                                                           
    ssa_id                 INTEGER NOT NULL,                                                                       
    ssa_pren_risto         NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_pren_tavolo        NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_costo_pren_tav     NUMERIC(7,2) NOT NULL,                                                                   
    ssa_pren_cibi_part     NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_costo_pren_cibi    NUMERIC(7,2) NOT NULL,                                                                   
    ssa_pren_spa           NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_serv_turi_est      NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_ric_latecheck      NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_tv_giochi_cam      NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_ric_aiuto_bag      NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_pren_serv_sport    NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    ssa_serv_sociali_int   NUMERIC(1) DEFAULT 0 NOT NULL,                                                           
    struttura_str_id       INTEGER NOT NULL                                                                        
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_pren_risto IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_pren_tavolo IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_pren_cibi_part IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_pren_spa IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_serv_turi_est IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_ric_latecheck IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_tv_giochi_cam IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_ric_aiuto_bag IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_pren_serv_sport IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CHECK ( ssa_serv_sociali_int IN (                                                                          
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_albergo ADD CONSTRAINT struttura_servizi_albergo_pk PRIMARY KEY ( ssa_id );          
                                                                                                                   
CREATE TABLE struttura_servizi_vari (                                                                              
    ssv_id                INTEGER NOT NULL,                                                                        
    ssv_anim_ceste        NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_anim_ciotole      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_solo_adulti       NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_cam_analergica    NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_solo_non_fum      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_area_fum          NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_cam_non_fum       NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_ascensore         NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_cam_disabili      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_cam_famigl        NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_cam_insonoriz     NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_suite_nuz         NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_servizi_vip       NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_riscaldamento     NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_area_cond         NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    ssv_area_cond_costo   NUMERIC(7,2),                                                                             
    struttura_str_id      INTEGER NOT NULL                                                                         
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_anim_ceste IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_anim_ciotole IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_solo_adulti IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_cam_analergica IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_solo_non_fum IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_area_fum IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_cam_non_fum IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_ascensore IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_cam_disabili IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_cam_famigl IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_cam_insonoriz IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_suite_nuz IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_servizi_vip IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_riscaldamento IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CHECK ( ssv_area_cond IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_servizi_vari ADD CONSTRAINT struttura_servizi_vari_pk PRIMARY KEY ( ssv_id );                
                                                                                                                   
CREATE TABLE struttura_spa_ben (                                                                                   
    ssp_id             INTEGER NOT NULL,                                                                           
    ssp_spa_ben        NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_costo          NUMERIC(7,2) NOT NULL,                                                                       
    ssp_sauna          NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_hammam         NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_vasca_idro     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_palestra       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_solarium       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_vasca_term     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_massaggi       NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_costo_mass     NUMERIC(7,2) NOT NULL,                                                                       
    ssp_mass_schiena   NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_mass_collo     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_mass_testa     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_mass_coppia    NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_mass_corpo     NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_mass_mani      NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_vasca_com      NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    ssp_vasca_aperto   NUMERIC(1) DEFAULT 0 NOT NULL,                                                               
    struttura_str_id   INTEGER NOT NULL                                                                            
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_spa_ben IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_sauna IN (                                                                                     
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_hammam IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_vasca_idro IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_palestra IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_solarium IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_vasca_term IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_massaggi IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_mass_schiena IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_mass_collo IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_mass_testa IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_mass_coppia IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_mass_corpo IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_mass_mani IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_vasca_com IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CHECK ( ssp_vasca_aperto IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben ADD CONSTRAINT struttura_spa_ben_pk PRIMARY KEY ( ssp_id );                          
                                                                                                                   
CREATE TABLE struttura_tariffe (                                                                                   
    tar_id                    INTEGER NOT NULL,                                                                    
    tar_data_inizio           DATE NOT NULL,                                                                       
    tar_data_fine             DATE,                                                                                
    tar_lunedi                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    tar_martedi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    tar_mercoledi             NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    tar_giovedi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    tar_venerdi               NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    tar_sabato                NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    tar_domenica              NUMERIC(1) DEFAULT 0 NOT NULL,                                                        
    tar_tariffa_uso_sing      NUMERIC(7,2),                                                                         
    tar_tariffa_minima        NUMERIC(7,2),                                                                         
    tar_tariffa_standard      NUMERIC(7,2),                                                                         
    struttura_str_id          INTEGER NOT NULL,                                                                    
    categorie_cat_id          INTEGER NOT NULL,                                                                    
    tipologia_camere_tpc_id   INTEGER NOT NULL                                                                     
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CONSTRAINT check_0_1 CHECK ( tar_lunedi IN (                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CHECK ( tar_martedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CHECK ( tar_mercoledi IN (                                                                                 
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CHECK ( tar_giovedi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CHECK ( tar_venerdi IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CHECK ( tar_sabato IN (                                                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CHECK ( tar_domenica IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe ADD CONSTRAINT struttura_tariffe_pk PRIMARY KEY ( tar_id );                          
                                                                                                                   
CREATE TABLE struttura_tasse (                                                                                     
    tas_id             INTEGER NOT NULL,                                                                           
    tas_nome           VARCHAR(255 ) NOT NULL,                                                                
    tas_costo          NUMERIC(7,2) NOT NULL,                                                                       
    struttura_str_id   INTEGER NOT NULL                                                                            
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_tasse ADD CONSTRAINT struttura_tasse_pk PRIMARY KEY ( tas_id );                              
                                                                                                                   
CREATE TABLE struttura_template_mess (                                                                             
    stm_id                      INTEGER NOT NULL,                                                                  
    stm_rientra_cond_checkin    VARCHAR(3) NOT NULL,                                                              
    stm_rietnra_cond_checkout   VARCHAR(3) NOT NULL,                                                              
    stm_risp_parc               NUMERIC(1) DEFAULT 0 NOT NULL,                                                      
    struttura_str_id            INTEGER NOT NULL,                                                                  
    condizioni_con_id           INTEGER NOT NULL,                                                                  
    condizioni_con_id1          INTEGER NOT NULL                                                                   
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_template_mess                                                                                
    ADD CONSTRAINT check_0_1 CHECK ( stm_risp_parc IN (                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_template_mess ADD CONSTRAINT struttura_template_mess_pk PRIMARY KEY ( stm_id );              
                                                                                                                   
CREATE TABLE struttura_trasporti (                                                                                 
    str_id                INTEGER NOT NULL,                                                                        
    str_parc_custodito    NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_parc_strada       NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_autorimessa       NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_parc_disabili     NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_ricarica_elett    NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_biglietti_trasp   NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_autonoleggio      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_nolo_bici_grat    NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_nolo_bici_pag     NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_navetta           NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    str_navetta_aero      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    struttura_str_id      INTEGER NOT NULL                                                                         
);                                                                                                                 
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_parc_custodito IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_parc_strada IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_autorimessa IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_parc_disabili IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_ricarica_elett IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_biglietti_trasp IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_autonoleggio IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_nolo_bici_grat IN (                                                                            
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_nolo_bici_pag IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_navetta IN (                                                                                   
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti                                                                                    
    ADD CHECK ( str_navetta_aero IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE struttura_trasporti ADD CONSTRAINT struttura_trasporti_pk PRIMARY KEY ( str_id );                      
                                                                                                                   
CREATE TABLE tipologia_camere (                                                                                    
    tpc_id            INTEGER NOT NULL,                                                                            
    tpc_descrizione   VARCHAR(255) NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE tipologia_camere ADD CONSTRAINT tipologia_camere_pk PRIMARY KEY ( tpc_id );                            
                                                                                                                   
CREATE TABLE tipologia_dintorni (                                                                                  
    din_id            INTEGER NOT NULL,                                                                            
    din_descrizione   VARCHAR(50 ) NOT NULL                                                                   
);                                                                                                                 
                                                                                                                   
ALTER TABLE tipologia_dintorni ADD CONSTRAINT tipologia_dintorni_pk PRIMARY KEY ( din_id );                        
                                                                                                                   
CREATE TABLE tipologia_promozione (                                                                                
    tpp_id            INTEGER NOT NULL,                                                                            
    tpp_descrizione   VARCHAR(255) NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE tipologia_promozione ADD CONSTRAINT tipologia_promozione_pk PRIMARY KEY ( tpp_id );                    
                                                                                                                   
CREATE TABLE titoli_studio (                                                                                       
    stu_id            INTEGER NOT NULL,                                                                            
    ute_descrizione   VARCHAR(50 ) NOT NULL                                                                   
);                                                                                                                 
                                                                                                                   
ALTER TABLE titoli_studio ADD CONSTRAINT titoli_studio_pk PRIMARY KEY ( stu_id );                                  
                                                                                                                   
CREATE TABLE utente (                                                                                              
    ute_id                     INTEGER NOT NULL,                                                                   
    ute_cognome                VARCHAR(50) NOT NULL,                                                              
    ute_nome                   VARCHAR(50) NOT NULL,                                                              
    ute_email                  VARCHAR(100) NOT NULL,                                                             
    ute_password               VARCHAR(255) NOT NULL,                                                             
    ute_last_login             DATE,                                                                               
    ute_num_tentativi          NUMERIC(2),                                                                          
    ute_cellulare              VARCHAR(10) NOT NULL,                                                              
    ute_nome_utente            VARCHAR(50),                                                                       
    ute_sesso                  VARCHAR(1),                                                                        
    ute_data_nascita           DATE,                                                                               
    titoli_studio_stu_id       INTEGER NOT NULL,                                                                   
    paesi_pae_id               INTEGER NOT NULL,                                                                   
    utente_indirizzo_uin_id    INTEGER NOT NULL,                                                                   
    ute_carta_tipo             VARCHAR(5),                                                                        
    ute_carta_numero           VARCHAR(15),                                                                       
    ute_carta_nominativo       VARCHAR(50),                                                                       
    ute_carta_scad_mese        VARCHAR(2),                                                                        
    ute_carta_scad_anno        VARCHAR(4),                                                                        
    ute_carta_usa_per_lav      NUMERIC(1) DEFAULT 0,                                                                
    ute_carta_usa_per_premio   NUMERIC(1) DEFAULT 0,                                                                
    utente_modo_viagg_umv_id   INTEGER NOT NULL,                                                                   
    utente_foto_utf_id         INTEGER NOT NULL                                                                    
);                                                                                                                 
                                                                                                                   
ALTER TABLE utente                                                                                                 
    ADD CONSTRAINT check_0_1 CHECK ( ute_carta_usa_per_lav IN (                                                    
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente                                                                                                 
    ADD CHECK ( ute_carta_usa_per_premio IN (                                                                      
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
CREATE UNIQUE INDEX utente__idx ON                                                                                 
    utente ( utente_foto_utf_id ASC );                                                                             
                                                                                                                   
CREATE UNIQUE INDEX utente__idxv1 ON                                                                               
    utente ( utente_indirizzo_uin_id ASC );                                                                        
                                                                                                                   
CREATE UNIQUE INDEX utente__idxv2 ON                                                                               
    utente ( utente_modo_viagg_umv_id ASC );                                                                       
                                                                                                                   
ALTER TABLE utente ADD CONSTRAINT utente_pk PRIMARY KEY ( ute_id );                                                
                                                                                                                   
CREATE TABLE utente_dati_bancari (                                                                                 
    ban_id            INTEGER NOT NULL,                                                                            
    ban_iban          VARCHAR(30) NOT NULL,                                                                       
    ban_nominativo    VARCHAR(100) NOT NULL,                                                                      
    ban_indirizzo     VARCHAR(50) NOT NULL,                                                                       
    ban_cap           VARCHAR(5) NOT NULL,                                                                        
    ban_nome_banca    VARCHAR(50) NOT NULL,                                                                       
    ban_branch_code   VARCHAR(20) NOT NULL,                                                                       
    ban_bic_swift     VARCHAR(20) NOT NULL,                                                                       
    ban_usa_attuale   NUMERIC(1) DEFAULT 0 NOT NULL,                                                                
    utente_ute_id     INTEGER NOT NULL                                                                             
);                                                                                                                 
                                                                                                                   
ALTER TABLE utente_dati_bancari                                                                                    
    ADD CHECK ( ban_usa_attuale IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_dati_bancari ADD CONSTRAINT utente_dati_bancari_pk PRIMARY KEY ( ban_id );                      
                                                                                                                   
CREATE TABLE utente_dati_fatturazione (                                                                            
    fat_id                INTEGER NOT NULL,                                                                        
    fat_ragione_sociale   VARCHAR(30) NOT NULL,                                                                   
    fat_attenzione        VARCHAR(50) NOT NULL,                                                                   
    fat_indirizzo         VARCHAR(50) NOT NULL,                                                                   
    fat_cap               VARCHAR(5) NOT NULL,                                                                    
    fat_citta             VARCHAR(6) NOT NULL,                                                                    
    utente_ute_id         INTEGER NOT NULL                                                                         
);                                                                                                                 
                                                                                                                   
ALTER TABLE utente_dati_fatturazione ADD CONSTRAINT utente_dati_fatturazione_pk PRIMARY KEY ( fat_id );            
                                                                                                                   
CREATE TABLE utente_foto (                                                                                         
    utf_id          INTEGER NOT NULL,                                                                              
    utf_foto        BYTEA,                                                                                          
    utente_ute_id   INTEGER NOT NULL                                                                               
);                                                                                                                 
                                                                                                                   
CREATE UNIQUE INDEX utente_foto__idx ON                                                                            
    utente_foto ( utente_ute_id ASC );                                                                             
                                                                                                                   
ALTER TABLE utente_foto ADD CONSTRAINT utente_foto_pk PRIMARY KEY ( utf_id );                                      
                                                                                                                   
CREATE TABLE utente_gruppi_viaggio (                                                                               
    ugv_id          INTEGER NOT NULL,                                                                              
    uid_nome        VARCHAR(30 ),                                                                             
    ugv_camere      NUMERIC(1),                                                                                     
    ugv_adulti      NUMERIC(1),                                                                                     
    ugv_bambini     NUMERIC(1),                                                                                     
    utente_ute_id   INTEGER NOT NULL                                                                               
);                                                                                                                 
                                                                                                                   
ALTER TABLE utente_gruppi_viaggio ADD CONSTRAINT utente_gruppi_viaggio_pk PRIMARY KEY ( ugv_id );                  
                                                                                                                   
CREATE TABLE utente_indirizzo (                                                                                    
    uin_id              INTEGER NOT NULL,                                                                          
    uin_indirizzo       VARCHAR(255 ) NOT NULL,                                                               
    uid_citta           VARCHAR(6 ),                                                                          
    uid_cap             VARCHAR(5),                                                                               
    uid_azienda         VARCHAR(50 ),                                                                         
    uid_azienda_citta   VARCHAR(6 ),                                                                          
    uid_azienda_cap     VARCHAR(5 ),                                                                          
    uid_azienda_tel     VARCHAR(15 ),                                                                         
    uid_azienda_piva    VARCHAR(16 ),                                                                         
    utente_ute_id       INTEGER NOT NULL                                                                           
);                                                                                                                 
                                                                                                                   
CREATE UNIQUE INDEX utente_indirizzo__idx ON                                                                       
    utente_indirizzo ( utente_ute_id ASC );                                                                        
                                                                                                                   
ALTER TABLE utente_indirizzo ADD CONSTRAINT utente_indirizzo_pk PRIMARY KEY ( uin_id );                            
                                                                                                                   
CREATE TABLE utente_messaggi (                                                                                     
    ums_id                   INTEGER NOT NULL,                                                                     
    ums_titolo               VARCHAR(30 ) NOT NULL,                                                           
    ums_messaggio            VARCHAR(250 ) NOT NULL,                                                          
    ums_destinatario         INTEGER NOT NULL,                                                                     
    utente_messaggi_ums_id   INTEGER NOT NULL,                                                                     
    utente_ute_id            INTEGER NOT NULL,                                                                     
    ums_tipo                 VARCHAR(1) NOT NULL,                                                                 
    argomenti_arg_id         INTEGER NOT NULL                                                                      
);                                                                                                                 
                                                                                                                   
ALTER TABLE utente_messaggi                                                                                        
    ADD CONSTRAINT check_i_r CHECK ( ums_tipo IN (                                                                 
        'I',                                                                                                       
        'R'                                                                                                        
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_messaggi ADD CONSTRAINT utente_messaggi_pk PRIMARY KEY ( ums_id );                              
                                                                                                                   
CREATE TABLE utente_modo_viagg (                                                                                   
    umv_id                INTEGER NOT NULL,                                                                        
    umv_fumatori          VARCHAR(2 ) NOT NULL,                                                               
    umv_stelle            VARCHAR(2 ) NOT NULL,                                                               
    umv_x_disabili        NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_ristorante        NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_internet          NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_non_fumatori      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_palestra          NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_disp_cam_fam      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_animali_amm       NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_parcheggio        NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_spa_benessere     NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_wifi              NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_wifi_gratis       NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_piscina_coperta   NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_navetta_aero      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_bar               NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_deposito_bag      NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_reception_24ore   NUMERIC(1) DEFAULT 0 NOT NULL,                                                            
    umv_x_chi_prenota     VARCHAR(2 ) NOT NULL,                                                               
    umv_valuta            VARCHAR(3 ) NOT NULL,                                                               
    utente_ute_id         INTEGER NOT NULL                                                                         
);                                                                                                                 
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_x_disabili IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_ristorante IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_internet IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_non_fumatori IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_palestra IN (                                                                                  
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_disp_cam_fam IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_animali_amm IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_parcheggio IN (                                                                                
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_spa_benessere IN (                                                                             
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_wifi IN (                                                                                      
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_wifi_gratis IN (                                                                               
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_piscina_coperta IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_navetta_aero IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_bar IN (                                                                                       
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_deposito_bag IN (                                                                              
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CHECK ( umv_reception_24ore IN (                                                                           
        0,                                                                                                         
        1                                                                                                          
    ) );                                                                                                           
                                                                                                                   
CREATE UNIQUE INDEX utente_modo_viagg__idx ON                                                                      
    utente_modo_viagg ( utente_ute_id ASC );                                                                       
                                                                                                                   
ALTER TABLE utente_modo_viagg ADD CONSTRAINT utente_modo_viagg_pk PRIMARY KEY ( umv_id );                          
                                                                                                                   
CREATE TABLE utente_strutture (                                                                                    
    utente_ute_id      INTEGER NOT NULL,                                                                           
    struttura_str_id   INTEGER NOT NULL                                                                            
);                                                                                                                 
                                                                                                                   
CREATE TABLE vincoli_validita (                                                                                    
    viv_id            INTEGER NOT NULL,                                                                            
    viv_descrizione   VARCHAR(255 ) NOT NULL                                                                  
);                                                                                                                 
                                                                                                                   
ALTER TABLE vincoli_validita ADD CONSTRAINT vincoli_validita_pk PRIMARY KEY ( viv_id );                            
                                                                                                                   
CREATE TABLE visibilita (                                                                                          
    vis_id            INTEGER NOT NULL,                                                                            
    vis_descrizione   VARCHAR(255) NOT NULL                                                                       
);                                                                                                                 
                                                                                                                   
ALTER TABLE visibilita ADD CONSTRAINT visibilita_pk PRIMARY KEY ( vis_id );                                        
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE prenotazioni_giudizi_esp                                                                               
    ADD CONSTRAINT prenotazioni_giudizi_esp_prenotazioni_fk FOREIGN KEY ( prenotazioni_pre_id,                     
    prenotazioni_pre_id1 )                                                                                         
        REFERENCES prenotazioni ( pre_id,                                                                          
        preventivi_pre_id );                                                                                       
                                                                                                                   
ALTER TABLE prenotazioni                                                                                           
    ADD CONSTRAINT prenotazioni_preventivi_fk FOREIGN KEY ( preventivi_pre_id )                                    
        REFERENCES preventivi ( pre_id );                                                                          
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE prenotazioni                                                                                           
    ADD CONSTRAINT prenotazioni_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )                        
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
ALTER TABLE prenotazioni                                                                                           
    ADD CONSTRAINT prenotazioni_utente_fk FOREIGN KEY ( utente_ute_id )                                            
        REFERENCES utente ( ute_id );                                                                              
                                                                                                                   
ALTER TABLE preventivi                                                                                             
    ADD CONSTRAINT preventivi_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )                          
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
ALTER TABLE preventivi                                                                                             
    ADD CONSTRAINT preventivi_utente_fk FOREIGN KEY ( utente_ute_id )                                              
        REFERENCES utente ( ute_id );                                                                              
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_accoglienza                                                                                  
    ADD CONSTRAINT struttura_accoglienza_struttura_fk FOREIGN KEY ( struttura_str_id )                             
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_attivita                                                                                     
    ADD CONSTRAINT struttura_attivita_struttura_fk FOREIGN KEY ( struttura_str_id )                                
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_accessibilita                                                                         
    ADD CONSTRAINT struttura_camere_accessibilita_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )      
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CONSTRAINT struttura_camere_aper_chiu_categorie_fk FOREIGN KEY ( categorie_cat_id )                        
        REFERENCES categorie ( cat_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CONSTRAINT struttura_camere_aper_chiu_struttura_fk FOREIGN KEY ( struttura_str_id )                        
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_aper_chiu                                                                             
    ADD CONSTRAINT struttura_camere_aper_chiu_tipologia_camere_fk FOREIGN KEY ( tipologia_camere_tpc_id )          
        REFERENCES tipologia_camere ( tpc_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_bagni                                                                                 
    ADD CONSTRAINT struttura_camere_bagni_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )              
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_dotazioni                                                                             
    ADD CONSTRAINT struttura_camere_dotazioni_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )          
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_est_vista                                                                             
    ADD CONSTRAINT struttura_camere_est_vista_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )          
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_foto                                                                                  
    ADD CONSTRAINT struttura_camere_foto_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )               
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_intratt                                                                               
    ADD CONSTRAINT struttura_camere_intratt_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )            
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_letti                                                                                 
    ADD CONSTRAINT struttura_camere_letti_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )              
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CONSTRAINT struttura_camere_promozioni_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )         
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CONSTRAINT struttura_camere_promozioni_tipologia_promozione_fk FOREIGN KEY ( tipologia_promozione_tpp_id ) 
        REFERENCES tipologia_promozione ( tpp_id );                                                                
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_promozioni                                                                            
    ADD CONSTRAINT struttura_camere_promozioni_visibilita_fk FOREIGN KEY ( visibilita_vis_id )                     
        REFERENCES visibilita ( vis_id );                                                                          
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_ristorazione                                                                          
    ADD CONSTRAINT struttura_camere_ristorazione_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )       
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
ALTER TABLE struttura_camere                                                                                       
    ADD CONSTRAINT struttura_camere_struttura_fk FOREIGN KEY ( struttura_str_id )                                  
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere_tecnologia                                                                            
    ADD CONSTRAINT struttura_camere_tecnologia_struttura_camere_fk FOREIGN KEY ( struttura_camere_cam_id )         
        REFERENCES struttura_camere ( cam_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere                                                                                       
    ADD CONSTRAINT struttura_camere_tipologia_camere_fk FOREIGN KEY ( tipologia_camere_tpc_id )                    
        REFERENCES tipologia_camere ( tpc_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_camere                                                                                       
    ADD CONSTRAINT struttura_camere_tipologia_camere_fkv2 FOREIGN KEY ( tipologia_camere_tpc_id1 )                 
        REFERENCES tipologia_camere ( tpc_id );                                                                    
                                                                                                                   
ALTER TABLE struttura                                                                                              
    ADD CONSTRAINT struttura_comuni_fk FOREIGN KEY ( comuni_com_codice )                                           
        REFERENCES comuni ( com_codice );                                                                          
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_cond_alternative                                                                             
    ADD CONSTRAINT struttura_cond_alternative_struttura_fk FOREIGN KEY ( struttura_str_id )                        
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_cond_cancel                                                                                  
    ADD CONSTRAINT struttura_cond_cancel_struttura_fk FOREIGN KEY ( struttura_str_id )                             
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_cond_pagamento                                                                               
    ADD CONSTRAINT struttura_cond_pagamento_struttura_fk FOREIGN KEY ( struttura_str_id )                          
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_costi_agg                                                                                    
    ADD CONSTRAINT struttura_costi_agg_struttura_fk FOREIGN KEY ( struttura_str_id )                               
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_dati_extra                                                                                   
    ADD CONSTRAINT struttura_dati_extra_struttura_fk FOREIGN KEY ( struttura_str_id )                              
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_dintorni                                                                                     
    ADD CONSTRAINT struttura_dintorni_struttura_fk FOREIGN KEY ( struttura_str_id )                                
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_dintorni                                                                                     
    ADD CONSTRAINT struttura_dintorni_tipologia_dintorni_fk FOREIGN KEY ( tipologia_dintorni_din_id )              
        REFERENCES tipologia_dintorni ( din_id );                                                                  
                                                                                                                   
ALTER TABLE struttura_foto                                                                                         
    ADD CONSTRAINT struttura_foto_struttura_fk FOREIGN KEY ( struttura_str_id )                                    
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_indicazioni                                                                                  
    ADD CONSTRAINT struttura_indicazioni_struttura_fk FOREIGN KEY ( struttura_str_id )                             
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_intrattenimento                                                                              
    ADD CONSTRAINT struttura_intrattenimento_struttura_fk FOREIGN KEY ( struttura_str_id )                         
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_lingue                                                                                       
    ADD CONSTRAINT struttura_lingue_lingue_parlate_fk FOREIGN KEY ( lingue_parlate_lin_id )                        
        REFERENCES lingue_parlate ( lin_id );                                                                      
                                                                                                                   
ALTER TABLE struttura_lingue                                                                                       
    ADD CONSTRAINT struttura_lingue_struttura_fk FOREIGN KEY ( struttura_str_id )                                  
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_messaggi                                                                                     
    ADD CONSTRAINT struttura_messaggi_lingue_parlate_fk FOREIGN KEY ( lingue_parlate_lin_id )                      
        REFERENCES lingue_parlate ( lin_id );                                                                      
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_messaggi                                                                                     
    ADD CONSTRAINT struttura_messaggi_struttura_fk FOREIGN KEY ( struttura_str_id )                                
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
ALTER TABLE struttura_pasti                                                                                        
    ADD CONSTRAINT struttura_pasti_struttura_fk FOREIGN KEY ( struttura_str_id )                                   
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
ALTER TABLE struttura_piscine                                                                                      
    ADD CONSTRAINT struttura_piscine_struttura_fk FOREIGN KEY ( struttura_str_id )                                 
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
ALTER TABLE struttura_pulizie                                                                                      
    ADD CONSTRAINT struttura_pulizie_struttura_fk FOREIGN KEY ( struttura_str_id )                                 
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CONSTRAINT struttura_restrizioni_categorie_fk FOREIGN KEY ( categorie_cat_id )                             
        REFERENCES categorie ( cat_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CONSTRAINT struttura_restrizioni_struttura_fk FOREIGN KEY ( struttura_str_id )                             
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_restrizioni                                                                                  
    ADD CONSTRAINT struttura_restrizioni_tipologia_camere_fk FOREIGN KEY ( tipologia_camere_tpc_id )               
        REFERENCES tipologia_camere ( tpc_id );                                                                    
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_ristorazione                                                                                 
    ADD CONSTRAINT struttura_ristorazione_struttura_fk FOREIGN KEY ( struttura_str_id )                            
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_servizi_albergo                                                                              
    ADD CONSTRAINT struttura_servizi_albergo_struttura_fk FOREIGN KEY ( struttura_str_id )                         
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_servizi_vari                                                                                 
    ADD CONSTRAINT struttura_servizi_vari_struttura_fk FOREIGN KEY ( struttura_str_id )                            
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
ALTER TABLE struttura_spa_ben                                                                                      
    ADD CONSTRAINT struttura_spa_ben_struttura_fk FOREIGN KEY ( struttura_str_id )                                 
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura                                                                                              
    ADD CONSTRAINT struttura_struttura_attivita_fk FOREIGN KEY ( struttura_attivita_sat_id )                       
        REFERENCES struttura_attivita ( sat_id );                                                                  
                                                                                                                   
ALTER TABLE struttura                                                                                              
    ADD CONSTRAINT struttura_struttura_pasti_fk FOREIGN KEY ( struttura_pasti_spa_id )                             
        REFERENCES struttura_pasti ( spa_id );                                                                     
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CONSTRAINT struttura_tariffe_categorie_fk FOREIGN KEY ( categorie_cat_id )                                 
        REFERENCES categorie ( cat_id );                                                                           
                                                                                                                   
ALTER TABLE struttura_tariffe                                                                                      
    ADD CONSTRAINT struttura_tariffe_struttura_fk FOREIGN KEY ( struttura_str_id )                                 
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_tariffe                                                                                      
    ADD CONSTRAINT struttura_tariffe_tipologia_camere_fk FOREIGN KEY ( tipologia_camere_tpc_id )                   
        REFERENCES tipologia_camere ( tpc_id );                                                                    
                                                                                                                   
ALTER TABLE struttura_tasse                                                                                        
    ADD CONSTRAINT struttura_tasse_struttura_fk FOREIGN KEY ( struttura_str_id )                                   
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_template_mess                                                                                
    ADD CONSTRAINT struttura_template_mess_condizioni_fk FOREIGN KEY ( condizioni_con_id )                         
        REFERENCES condizioni ( con_id );                                                                          
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_template_mess                                                                                
    ADD CONSTRAINT struttura_template_mess_condizioni_fkv2 FOREIGN KEY ( condizioni_con_id1 )                      
        REFERENCES condizioni ( con_id );                                                                          
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_template_mess                                                                                
    ADD CONSTRAINT struttura_template_mess_struttura_fk FOREIGN KEY ( struttura_str_id )                           
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE struttura_trasporti                                                                                    
    ADD CONSTRAINT struttura_trasporti_struttura_fk FOREIGN KEY ( struttura_str_id )                               
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
ALTER TABLE utente_dati_bancari                                                                                    
    ADD CONSTRAINT utente_dati_bancari_utente_fk FOREIGN KEY ( utente_ute_id )                                     
        REFERENCES utente ( ute_id );                                                                              
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE utente_dati_fatturazione                                                                               
    ADD CONSTRAINT utente_dati_fatturazione_utente_fk FOREIGN KEY ( utente_ute_id )                                
        REFERENCES utente ( ute_id );                                                                              
                                                                                                                   
ALTER TABLE utente_foto                                                                                            
    ADD CONSTRAINT utente_foto_utente_fk FOREIGN KEY ( utente_ute_id )                                             
        REFERENCES utente ( ute_id )                                                                               
            ON DELETE CASCADE;                                                                                     
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE utente_gruppi_viaggio                                                                                  
    ADD CONSTRAINT utente_gruppi_viaggio_utente_fk FOREIGN KEY ( utente_ute_id )                                   
        REFERENCES utente ( ute_id )                                                                               
            ON DELETE CASCADE;                                                                                     
                                                                                                                   
ALTER TABLE utente_indirizzo                                                                                       
    ADD CONSTRAINT utente_indirizzo_utente_fk FOREIGN KEY ( utente_ute_id )                                        
        REFERENCES utente ( ute_id )                                                                               
            ON DELETE CASCADE;                                                                                     
                                                                                                                   
ALTER TABLE utente_messaggi                                                                                        
    ADD CONSTRAINT utente_messaggi_argomenti_fk FOREIGN KEY ( argomenti_arg_id )                                   
        REFERENCES argomenti ( arg_id );                                                                           
                                                                                                                   
ALTER TABLE utente_messaggi                                                                                        
    ADD CONSTRAINT utente_messaggi_utente_fk FOREIGN KEY ( utente_ute_id )                                         
        REFERENCES utente ( ute_id );                                                                              
                                                                                                                   
--  ERROR: FK name length exceeds maximum allowed length(30)                                                       
ALTER TABLE utente_messaggi                                                                                        
    ADD CONSTRAINT utente_messaggi_utente_messaggi_fk FOREIGN KEY ( utente_messaggi_ums_id )                       
        REFERENCES utente_messaggi ( ums_id );                                                                     
                                                                                                                   
ALTER TABLE utente_modo_viagg                                                                                      
    ADD CONSTRAINT utente_modo_viagg_utente_fk FOREIGN KEY ( utente_ute_id )                                       
        REFERENCES utente ( ute_id )                                                                               
            ON DELETE CASCADE;                                                                                     
                                                                                                                   
ALTER TABLE utente                                                                                                 
    ADD CONSTRAINT utente_paesi_fk FOREIGN KEY ( paesi_pae_id )                                                    
        REFERENCES paesi ( pae_id );                                                                               
                                                                                                                   
ALTER TABLE utente_strutture                                                                                       
    ADD CONSTRAINT utente_strutture_struttura_fk FOREIGN KEY ( struttura_str_id )                                  
        REFERENCES struttura ( str_id );                                                                           
                                                                                                                   
ALTER TABLE utente_strutture                                                                                       
    ADD CONSTRAINT utente_strutture_utente_fk FOREIGN KEY ( utente_ute_id )                                        
        REFERENCES utente ( ute_id );                                                                              
                                                                                                                   
ALTER TABLE utente                                                                                                 
    ADD CONSTRAINT utente_titoli_studio_fk FOREIGN KEY ( titoli_studio_stu_id )                                    
        REFERENCES titoli_studio ( stu_id );                                                                       
                                                                                                                   
ALTER TABLE utente                                                                                                 
    ADD CONSTRAINT utente_utente_foto_fk FOREIGN KEY ( utente_foto_utf_id )                                        
        REFERENCES utente_foto ( utf_id )                                                                          
            ON DELETE CASCADE;                                                                                     
                                                                                                                   
ALTER TABLE utente                                                                                                 
    ADD CONSTRAINT utente_utente_indirizzo_fk FOREIGN KEY ( utente_indirizzo_uin_id )                              
        REFERENCES utente_indirizzo ( uin_id )                                                                     
            ON DELETE CASCADE;                                                                                     
                                                                                                                   
ALTER TABLE utente                                                                                                 
    ADD CONSTRAINT utente_utente_modo_viagg_fk FOREIGN KEY ( utente_modo_viagg_umv_id )                            
        REFERENCES utente_modo_viagg ( umv_id )                                                                    
            ON DELETE CASCADE;                                                                                     
                                                                                                                   
                                                                                                                                                                                  
.class public Liwa;
.super Ljava/lang/Object;
.source "DateManage.java"


# instance fields
.field a:Lcom/dbappsecurity/utl/LogUts;

.field public b:Ljava/lang/String;

.field public c:Lcom/dbappsecurity/entity/LocaDataEntity;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/CompanyEntity;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/Versns;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/DomainCasheEntity;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Liwa;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dbappsecurity/utl/LogUts;->getInstance(Ljava/lang/String;)Lcom/dbappsecurity/utl/LogUts;

    move-result-object v0

    iput-object v0, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    .line 30
    const-string/jumbo v0, "||"

    iput-object v0, p0, Liwa;->b:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Liwa;->d:Ljava/util/Map;

    .line 36
    iput-object v2, p0, Liwa;->e:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Liwa;->f:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Liwa;->g:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Liwa;->h:Ljava/util/Map;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Liwa;->i:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "ver.txt"

    iput-object v0, p0, Liwa;->j:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Liwa;->k:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "ver1.txt"

    iput-object v0, p0, Liwa;->l:Ljava/lang/String;

    .line 424
    const-string/jumbo v0, "fileNameDBAPPSecurity"

    iput-object v0, p0, Liwa;->m:Ljava/lang/String;

    .line 425
    const-string/jumbo v0, "KeyData"

    iput-object v0, p0, Liwa;->n:Ljava/lang/String;

    .line 428
    const-string/jumbo v0, ""

    iput-object v0, p0, Liwa;->o:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Liwa;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    :cond_0
    iget-object v0, p0, Liwa;->e:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 342
    :cond_1
    iget-object v0, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    if-eqz v0, :cond_2

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    .line 346
    :cond_2
    iget-object v0, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/dbappsecurity/utl/JZFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/dbappsecurity/utl/JZFile;->DeleteFile(Ljava/lang/String;)V

    .line 350
    :cond_3
    return-void
.end method

.method private b()Lcom/dbappsecurity/entity/LocaDataEntity;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 443
    const/4 v4, 0x0

    .line 445
    .local v4, "locaDataEntity":Lcom/dbappsecurity/entity/LocaDataEntity;
    iget-object v7, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v8, "getInitialVersns:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Liwa;->o:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v7, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v7}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v7}, Lcom/dbappsecurity/utl/JZFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 449
    iget-object v7, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/dbappsecurity/utl/JZIO;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "sde":Ljava/lang/String;
    const/4 v3, 0x0

    .line 453
    .local v3, "isreadSharePro":Z
    invoke-static {v5}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    const/4 v3, 0x1

    .line 471
    :goto_0
    if-eqz v3, :cond_1

    .line 1416
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v7

    iget-object v7, v7, Liwb;->b:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 1417
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v7

    iget-object v7, v7, Liwb;->b:Landroid/content/Context;

    const-string/jumbo v8, "fileNameDBAPPSecurity"

    const-string/jumbo v9, "KeyData"

    invoke-static {v7, v8, v9}, Lcom/dbappsecurity/utl/JZSharePre;->readString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "sharePre_str":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 475
    move-object v5, v6

    .line 480
    .end local v6    # "sharePre_str":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 484
    :try_start_0
    iget-object v7, p0, Liwa;->o:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/dbappsecurity/utl/AESEncrypt;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 495
    .local v0, "decryptingCode":Ljava/lang/String;
    iget-object v7, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v8, "getInitialVersns()_decryptingCode"

    invoke-virtual {v7, v8, v0}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 500
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_1
    new-instance v7, Liwa$1;

    invoke-direct {v7, p0}, Liwa$1;-><init>(Liwa;)V

    .line 501
    invoke-virtual {v7}, Liwa$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 500
    invoke-virtual {v2, v0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "locaDataEntity":Lcom/dbappsecurity/entity/LocaDataEntity;
    check-cast v4, Lcom/dbappsecurity/entity/LocaDataEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 517
    .end local v0    # "decryptingCode":Ljava/lang/String;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "isreadSharePro":Z
    .end local v5    # "sde":Ljava/lang/String;
    .restart local v4    # "locaDataEntity":Lcom/dbappsecurity/entity/LocaDataEntity;
    :cond_2
    return-object v4

    .line 458
    .restart local v3    # "isreadSharePro":Z
    .restart local v5    # "sde":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v7, p0, Liwa;->o:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/dbappsecurity/utl/AESEncrypt;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    iget-object v7, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v7}, Lcom/dbappsecurity/utl/JZFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 464
    iget-object v7, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v7}, Lcom/dbappsecurity/utl/JZFile;->DeleteFile(Ljava/lang/String;)V

    .line 467
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 487
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    invoke-direct {p0}, Liwa;->a()V

    .line 491
    new-instance v7, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v8, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgDecrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v8}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v8

    sget-object v9, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgDecrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v9}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v11, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v7

    .line 502
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "locaDataEntity":Lcom/dbappsecurity/entity/LocaDataEntity;
    .restart local v0    # "decryptingCode":Ljava/lang/String;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    :catch_2
    move-exception v1

    .line 503
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    invoke-direct {p0}, Liwa;->a()V

    .line 506
    new-instance v7, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v8, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocDataEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v8}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v8

    sget-object v9, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocDataEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v9}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v11, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v7

    .line 511
    .end local v0    # "decryptingCode":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "locaDataEntity":Lcom/dbappsecurity/entity/LocaDataEntity;
    :cond_5
    invoke-direct {p0}, Liwa;->a()V

    .line 512
    new-instance v7, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v8, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocDataEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v8}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v8

    sget-object v9, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocDataEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v9}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v11, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v7
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 12
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appkeyVersion"    # Ljava/lang/String;
    .param p3, "mathematicalVersion"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "refreshKey"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "boole"    # Z
    .param p8, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    const/4 v1, -0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_c

    .line 1112
    :try_start_0
    invoke-direct {p0}, Liwa;->b()Lcom/dbappsecurity/entity/LocaDataEntity;

    move-result-object v1

    iput-object v1, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    .line 1114
    iget-object v1, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    if-nez v1, :cond_1

    .line 1115
    invoke-direct {p0}, Liwa;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local p5    # "refreshKey":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1120
    .restart local p5    # "refreshKey":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v1, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    invoke-virtual {v1}, Lcom/dbappsecurity/entity/LocaDataEntity;->getMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Liwa;->e:Ljava/util/Map;

    .line 1122
    const/4 v4, 0x0

    .line 1124
    iget-object v1, p0, Liwa;->e:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 1125
    iget-object v1, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1127
    const/4 v6, -0x1

    const/4 v5, -0x1

    .line 1128
    const-string/jumbo v3, ""

    .line 1130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dbappsecurity/entity/CompanyEntity;

    .line 1132
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_21

    .line 1134
    invoke-virtual {v2}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v2

    .line 1136
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v6

    move v6, v5

    move-object v5, v3

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1138
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v10, "\\|\\|"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1143
    if-eqz v3, :cond_2

    array-length v10, v3

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 1145
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Lcom/dbappsecurity/utl/JZVerifyType;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Lcom/dbappsecurity/utl/JZVerifyType;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1147
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 1149
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1150
    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    move v7, v5

    move-object v5, v2

    .line 1152
    goto :goto_2

    .line 1154
    :cond_3
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v6, v10, :cond_2

    .line 1156
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 1158
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1159
    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    move v7, v5

    move-object v5, v2

    .line 1161
    goto/16 :goto_2

    .line 1168
    :cond_4
    const/4 v3, 0x1

    .line 1179
    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v5}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1180
    iget-object v2, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v1, v3

    :goto_4
    move v4, v1

    .line 1184
    goto/16 :goto_1

    .line 1186
    :cond_6
    if-eqz v4, :cond_8

    .line 1191
    :cond_7
    invoke-direct {p0}, Liwa;->a()V

    .line 1194
    :cond_8
    iget-object v1, p0, Liwa;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/dbappsecurity/utl/JZFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1195
    iget-object v1, p0, Liwa;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/dbappsecurity/utl/JZFile;->DeleteFile(Ljava/lang/String;)V

    .line 1198
    :cond_9
    iget-object v1, p0, Liwa;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1200
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 1202
    iget-object v2, p0, Liwa;->e:Ljava/util/Map;

    if-eqz v2, :cond_a

    .line 1203
    iget-object v2, p0, Liwa;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1204
    iget-object v2, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v3, "refresh()_map_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_a
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 1209
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 1210
    iget-object v2, p0, Liwa;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    iget-object v2, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v3, "refresh()_map_ver_key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_b
    iget-object v1, p0, Liwa;->g:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1216
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 1217
    iget-object v2, p0, Liwa;->g:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    iget-object v2, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v3, "refresh()_map_random"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 94
    .end local p5    # "refreshKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    .restart local p5    # "refreshKey":Ljava/lang/String;
    :cond_c
    if-nez p8, :cond_1d

    .line 1234
    :try_start_2
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1235
    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static/range {p4 .. p4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1358
    .end local p5    # "refreshKey":Ljava/lang/String;
    :cond_d
    :goto_5
    iget-object v1, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1360
    iget-object v1, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    if-eqz v1, :cond_0

    .line 1362
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 1363
    iget-object v2, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1365
    const/4 v1, 0x0

    .line 1368
    :try_start_3
    invoke-static {v2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1370
    iget-object v1, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v3, "saveVersns()_saveLoca"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Gson: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v1, p0, Liwa;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dbappsecurity/utl/AESEncrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 1381
    :cond_e
    :try_start_4
    iget-object v2, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/dbappsecurity/utl/JZFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1382
    iget-object v2, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/dbappsecurity/utl/JZFile;->DeleteFile(Ljava/lang/String;)V

    .line 1385
    :cond_f
    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1387
    iget-object v2, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v3, "saveVersns()_encryption:"

    invoke-virtual {v2, v3, v1}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v2

    iget-object v2, v2, Liwb;->b:Landroid/content/Context;

    if-eqz v2, :cond_10

    .line 1406
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v2

    iget-object v2, v2, Liwb;->b:Landroid/content/Context;

    const-string/jumbo v3, "fileNameDBAPPSecurity"

    const-string/jumbo v4, "KeyData"

    invoke-static {v2, v3, v4, v1}, Lcom/dbappsecurity/utl/JZSharePre;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_10
    const/4 v2, 0x0

    iget-object v3, p0, Liwa;->i:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/dbappsecurity/utl/JZIO;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1240
    .restart local p5    # "refreshKey":Ljava/lang/String;
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1242
    iget-object v1, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    if-nez v1, :cond_12

    .line 1243
    new-instance v1, Lcom/dbappsecurity/entity/LocaDataEntity;

    invoke-direct {v1}, Lcom/dbappsecurity/entity/LocaDataEntity;-><init>()V

    iput-object v1, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    .line 1246
    :cond_12
    iget-object v1, p0, Liwa;->e:Ljava/util/Map;

    if-nez v1, :cond_13

    .line 1247
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Liwa;->e:Ljava/util/Map;

    .line 1248
    iget-object v1, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    iget-object v2, p0, Liwa;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/dbappsecurity/entity/LocaDataEntity;->setMap(Ljava/util/Map;)V

    .line 1251
    :cond_13
    iget-object v1, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dbappsecurity/entity/CompanyEntity;

    .line 1253
    if-nez v1, :cond_1f

    .line 1254
    new-instance v1, Lcom/dbappsecurity/entity/CompanyEntity;

    invoke-direct {v1}, Lcom/dbappsecurity/entity/CompanyEntity;-><init>()V

    .line 1255
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/dbappsecurity/entity/CompanyEntity;->setRefreshKey(Ljava/lang/String;)V

    .line 1256
    iget-object v2, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1260
    :goto_6
    invoke-static/range {p6 .. p6}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1261
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/dbappsecurity/entity/CompanyEntity;->setUrl(Ljava/lang/String;)V

    .line 1264
    :cond_14
    invoke-static/range {p5 .. p5}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "-1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p7, :cond_16

    .line 1265
    :cond_15
    const-string/jumbo p5, ""

    .line 1268
    .end local p5    # "refreshKey":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/dbappsecurity/entity/CompanyEntity;->setRefreshKey(Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v4, "decryptKey()_verKey \uff1a"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verKey:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v2}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v1

    .line 1274
    if-nez v1, :cond_1e

    .line 1275
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1276
    invoke-virtual {v2, v1}, Lcom/dbappsecurity/entity/CompanyEntity;->setMapVers(Ljava/util/Map;)V

    move-object v2, v1

    .line 1279
    :goto_7
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dbappsecurity/entity/Versns;

    .line 1281
    if-nez v1, :cond_17

    .line 1282
    new-instance v1, Lcom/dbappsecurity/entity/Versns;

    invoke-direct {v1}, Lcom/dbappsecurity/entity/Versns;-><init>()V

    .line 1283
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    :cond_17
    invoke-virtual {v1, p1}, Lcom/dbappsecurity/entity/Versns;->setCorpId(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v1, p2}, Lcom/dbappsecurity/entity/Versns;->setAppkeyVersion(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v1, p3}, Lcom/dbappsecurity/entity/Versns;->setMathematicalVersion(Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/dbappsecurity/entity/Versns;->setKey(Ljava/lang/String;)V

    .line 1291
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    if-nez v1, :cond_18

    .line 1292
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Liwa;->f:Ljava/util/Map;

    .line 1295
    :cond_18
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1297
    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1299
    const-string/jumbo v2, "\\|\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1301
    if-eqz v1, :cond_1b

    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_1b

    .line 1303
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/dbappsecurity/utl/JZVerifyType;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/dbappsecurity/utl/JZVerifyType;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1305
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v2, v4, :cond_19

    .line 1307
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1309
    :cond_19
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_d

    .line 1311
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 1312
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1317
    :cond_1a
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1321
    :cond_1b
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1326
    :cond_1c
    iget-object v1, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1375
    :catch_0
    move-exception v1

    .line 1376
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1377
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgEncrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgEncrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 103
    .restart local p5    # "refreshKey":Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Liwa;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .end local p5    # "refreshKey":Ljava/lang/String;
    :cond_1e
    move-object v2, v1

    goto/16 :goto_7

    .restart local p5    # "refreshKey":Ljava/lang/String;
    :cond_1f
    move-object v2, v1

    goto/16 :goto_6

    :cond_20
    move v3, v4

    goto/16 :goto_3

    :cond_21
    move v1, v4

    goto/16 :goto_4
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Liwa;->c:Lcom/dbappsecurity/entity/LocaDataEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Liwa;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liwa;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Liwa;->e:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dbappsecurity/entity/CompanyEntity;

    invoke-virtual {v0}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 68
    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dbappsecurity/entity/CompanyEntity;

    invoke-virtual {v0}, Lcom/dbappsecurity/entity/CompanyEntity;->getRefreshKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dbappsecurity/entity/CompanyEntity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/dbappsecurity/entity/CompanyEntity;->setRefreshKey(Ljava/lang/String;)V

    .line 75
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

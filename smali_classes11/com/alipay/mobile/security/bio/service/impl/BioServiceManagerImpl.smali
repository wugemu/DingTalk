.class public Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;
.super Lcom/alipay/mobile/security/bio/service/BioServiceManager;
.source "BioServiceManagerImpl.java"


# instance fields
.field private c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/service/BioService;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/service/BioService;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/service/BioAppDescription;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/service/local/LocalService;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/service/BioServiceDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zimId"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->g:Ljava/util/HashMap;

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a(Landroid/content/Context;)V

    .line 1088
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    move-result-object v1

    .line 1089
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    const-class v2, Lcom/alipay/mobile/security/bio/service/BioStoreService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    new-instance v2, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;

    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;-><init>(Landroid/content/Context;)V

    .line 1093
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    const-class v3, Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    new-instance v3, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;

    invoke-direct {v3}, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;-><init>()V

    .line 1097
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    const-class v4, Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    new-instance v4, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;

    invoke-direct {v4}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;-><init>()V

    .line 1101
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    const-class v5, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_0

    .line 1106
    new-instance v0, Liul;

    invoke-direct {v0}, Liul;-><init>()V

    .line 1110
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    const-class v6, Liuk;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/security/bio/service/BioStoreService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 1113
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 1114
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 1115
    invoke-virtual {v4, p0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->b(Landroid/content/Context;)V

    .line 75
    return-void

    .line 1108
    :cond_0
    new-instance v0, Lium;

    invoke-direct {v0}, Lium;-><init>()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
    .locals 4
    .param p0, "item"    # Ljava/lang/Class;

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 182
    .local v2, "metaInfo":Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_0
    return-object v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->g:Ljava/util/HashMap;

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->parse(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/LocalService;

    .line 81
    .local v0, "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/security/bio/service/local/LocalService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    goto :goto_0

    .line 83
    .end local v0    # "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V
    .locals 6
    .param p1, "app"    # Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getAppInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    new-instance v4, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v4}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v4

    .line 351
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const/high16 v4, 0x30000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 354
    const-string/jumbo v4, "com.alipay.mobile.security.bio.action.intent.app"

    invoke-static {p1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const/4 v3, 0x0

    .line 357
    .local v3, "start":Z
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->isRunningOnQuinox(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    :try_start_0
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->startActivity(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 363
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Runtime.startActivity(intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : bRet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 366
    :cond_1
    if-nez v3, :cond_2

    .line 367
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 368
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 373
    :cond_2
    :goto_1
    return-void

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 370
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    const-string/jumbo v4, "start APP context null"

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    invoke-static {p1, p0}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->loadMetaInfoClass(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Ljava/util/List;

    move-result-object v7

    .line 123
    .local v7, "metaClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 124
    .local v4, "item":Ljava/lang/Class;
    invoke-static {v4}, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a(Ljava/lang/Class;)Lcom/alipay/mobile/security/bio/service/BioMetaInfo;

    move-result-object v3

    .line 125
    .local v3, "info":Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->getExtServices()Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "descriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/BioServiceDescription;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    .line 1149
    .local v8, "serviceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    :try_start_0
    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getClazz()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/security/bio/service/BioService;

    .line 1150
    iget-object v12, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v9

    .line 1152
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    :catch_1
    move-exception v9

    .line 1154
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :catch_2
    move-exception v9

    .line 1156
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v8    # "serviceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->getApplications()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 1167
    .local v0, "appDescription":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    if-eqz v0, :cond_2

    .line 1168
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "bio_type_"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioType()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1170
    iget-object v12, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v12, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1171
    iget-object v12, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v12, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1173
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "app exist:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v13, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 1174
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "app input:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v0    # "appDescription":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .end local v2    # "descriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/BioServiceDescription;>;"
    .end local v3    # "info":Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
    .end local v4    # "item":Ljava/lang/Class;
    :cond_4
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 136
    .local v6, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 137
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/bio/service/BioService;

    .line 138
    .local v1, "bioService":Lcom/alipay/mobile/security/bio/service/BioService;
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/security/bio/service/BioService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    goto :goto_2

    .line 140
    .end local v1    # "bioService":Lcom/alipay/mobile/security/bio/service/BioService;
    .end local v5    # "key":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    if-eqz v9, :cond_1

    .line 269
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 270
    .local v2, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 271
    .local v1, "extKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    invoke-virtual {v10, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/bio/service/BioService;

    .line 272
    .local v3, "extService":Lcom/alipay/mobile/security/bio/service/BioService;
    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioService;->destroy()V

    goto :goto_0

    .line 274
    .end local v1    # "extKey":Ljava/lang/String;
    .end local v3    # "extService":Lcom/alipay/mobile/security/bio/service/BioService;
    :cond_0
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->clear()V

    .line 277
    .end local v2    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    if-eqz v9, :cond_3

    .line 278
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 279
    .local v8, "sysKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 280
    .local v7, "sysKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioService;

    .line 281
    .local v0, "bioService":Lcom/alipay/mobile/security/bio/service/BioService;
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioService;->destroy()V

    goto :goto_1

    .line 283
    .end local v0    # "bioService":Lcom/alipay/mobile/security/bio/service/BioService;
    .end local v7    # "sysKey":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->clear()V

    .line 286
    .end local v8    # "sysKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 287
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 288
    .local v5, "locKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 289
    .local v4, "locKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/security/bio/service/local/LocalService;

    .line 290
    .local v6, "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    invoke-virtual {v6}, Lcom/alipay/mobile/security/bio/service/local/LocalService;->destroy()V

    goto :goto_2

    .line 293
    .end local v4    # "locKey":Ljava/lang/String;
    .end local v6    # "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    :cond_4
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 296
    .end local v5    # "locKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->g:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 297
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 300
    :cond_6
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    if-eqz v9, :cond_7

    .line 301
    iget-object v9, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->clear()V

    .line 303
    :cond_7
    return-void
.end method

.method public getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 196
    .local v0, "bioService":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    .end local v0    # "bioService":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v0, :cond_0

    .line 203
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    .line 204
    .local v1, "bioServiceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getClazz()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/bio/service/local/LocalService;

    .line 206
    .local v3, "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/security/bio/service/local/LocalService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 207
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    move-object v0, v3

    .line 215
    .end local v1    # "bioServiceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    .end local v3    # "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 217
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 223
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 225
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->d:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 231
    :cond_2
    :goto_3
    return-object v0

    .line 197
    .restart local v0    # "bioService":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "bioService":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 211
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 219
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public preLoad()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, -0x1

    return v0
.end method

.method public startBioActivity(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)Ljava/lang/String;
    .locals 5
    .param p1, "app"    # Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    const-string/jumbo v1, ""

    .line 238
    .local v1, "appID":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bio_type_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 244
    .local v0, "appDescription":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBistoken(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setCfg(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setTag(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->isSigned()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setSigned(Z)V

    .line 248
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getHeadImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setHeadImageURL(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getRemoteURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setRemoteURL(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->isAutoClose()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAutoClose(Z)V

    .line 251
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V

    .line 263
    .end local v0    # "appDescription":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    :cond_1
    :goto_1
    return-object v1

    .line 259
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method public startBioActivity(Lcom/alipay/mobile/security/bio/service/BioAppDescription;Lcom/alipay/mobile/security/bio/module/MicroModule;)Ljava/lang/String;
    .locals 5
    .param p1, "app"    # Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .param p2, "microModule"    # Lcom/alipay/mobile/security/bio/module/MicroModule;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    const-string/jumbo v1, ""

    .line 308
    .local v1, "appID":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bio_type_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->e:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 315
    .local v0, "appDescription":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setCfg(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setTag(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->isSigned()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setSigned(Z)V

    .line 318
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBistoken(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getHeadImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setHeadImageURL(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getRemoteURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setRemoteURL(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->isAutoClose()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAutoClose(Z)V

    .line 322
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getFcSpecialData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setFcSpecialData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 323
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 324
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;->a(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V

    .line 335
    .end local v0    # "appDescription":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    :cond_1
    :goto_1
    return-object v1

    .line 331
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1
.end method

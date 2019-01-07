.class public Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;
.super Ljava/lang/Object;
.source "DomainDataSourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/domain/DomainDataSource;


# static fields
.field private static volatile mInstance:Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDomainSharePreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mail_domain_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 120
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->mInstance:Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->mInstance:Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->mInstance:Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->mInstance:Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public deleteDomainInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getDomainSharePreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public insertOrUpdateDomainInfo(Lcom/alibaba/alimei/restfulapi/domain/Domain;)V
    .locals 9
    .param p1, "domain"    # Lcom/alibaba/alimei/restfulapi/domain/Domain;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "domainJsonString":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getDomainSharePreference()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 41
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    .line 46
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;-><init>()V

    .line 47
    .local v0, "_crypt":Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
    const-string/jumbo v7, "G`~0zE@twR1/2C4H).^lv-|3ByWU\'hY!"

    const/16 v8, 0x20

    invoke-static {v7, v8}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->SHA256(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v4, "~Kr*ntApxdYBu{F5"

    .line 49
    .local v4, "iv":Ljava/lang/String;
    invoke-virtual {v0, v1, v5, v4}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    .end local v0    # "_crypt":Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
    .end local v4    # "iv":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getDomainSharePreference()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 57
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 50
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public queryDomainInfo(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/domain/Domain;
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getDomainSharePreference()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 70
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    .line 74
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getDomainSharePreference()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-interface {v7, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "domainString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 81
    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;-><init>()V

    .line 82
    .local v0, "_crypt":Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
    const-string/jumbo v7, "G`~0zE@twR1/2C4H).^lv-|3ByWU\'hY!"

    const/16 v8, 0x20

    invoke-static {v7, v8}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->SHA256(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v4, "~Kr*ntApxdYBu{F5"

    .line 84
    .local v4, "iv":Ljava/lang/String;
    invoke-virtual {v0, v2, v5, v4}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    .end local v0    # "_crypt":Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
    .end local v4    # "iv":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/alibaba/alimei/restfulapi/domain/Domain;

    invoke-virtual {v7, v2, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/domain/Domain;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .local v1, "domain":Lcom/alibaba/alimei/restfulapi/domain/Domain;
    goto :goto_0

    .line 85
    .end local v1    # "domain":Lcom/alibaba/alimei/restfulapi/domain/Domain;
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 94
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v1, 0x0

    .restart local v1    # "domain":Lcom/alibaba/alimei/restfulapi/domain/Domain;
    goto :goto_0
.end method

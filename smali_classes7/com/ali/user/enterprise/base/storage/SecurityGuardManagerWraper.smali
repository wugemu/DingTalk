.class public Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;
.super Ljava/lang/Object;
.source "SecurityGuardManagerWraper.java"


# static fields
.field private static final SESSION_LIST:Ljava/lang/String; = "aliusersdk_session_lists"

.field private static final TAG:Ljava/lang/String; = "login.SecurityManager"

.field private static mSecurityGuardManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->mSecurityGuardManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildWSecurityData()Lcom/ali/user/enterprise/base/storage/WSecurityData;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/ali/user/enterprise/base/storage/WSecurityData;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/storage/WSecurityData;-><init>()V

    .line 123
    .local v0, "securityData":Lcom/ali/user/enterprise/base/storage/WSecurityData;
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getWUA()Lcom/ali/user/enterprise/base/storage/WUAData;

    move-result-object v1

    .line 124
    .local v1, "wuaData":Lcom/ali/user/enterprise/base/storage/WUAData;
    if-eqz v1, :cond_0

    .line 125
    iget-object v2, v1, Lcom/ali/user/enterprise/base/storage/WUAData;->wua:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/enterprise/base/storage/WSecurityData;->wua:Ljava/lang/String;

    .line 126
    iget-object v2, v1, Lcom/ali/user/enterprise/base/storage/WUAData;->t:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/enterprise/base/storage/WSecurityData;->t:Ljava/lang/String;

    .line 128
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/enterprise/base/info/AppInfo;->getUmidToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/enterprise/base/storage/WSecurityData;->umidToken:Ljava/lang/String;

    .line 129
    return-object v0
.end method

.method public static declared-synchronized clearAutologinTokenFromFile(Ljava/lang/String;)V
    .locals 8
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 271
    const-class v5, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    :goto_0
    monitor-exit v5

    return-void

    .line 274
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "aliusersdk_session_lists"

    invoke-static {v4, v6}, Lcom/ali/user/enterprise/base/utils/FileUtils;->readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "savedJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    new-instance v2, Lcom/ali/user/enterprise/base/data/SessionList;

    invoke-direct {v2}, Lcom/ali/user/enterprise/base/data/SessionList;-><init>()V

    .line 288
    .local v2, "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v3, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    if-eqz v2, :cond_3

    .line 291
    iget-object v4, v2, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 292
    iget-object v4, v2, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/enterprise/base/data/SessionModel;

    .line 293
    .local v0, "model":Lcom/ali/user/enterprise/base/data/SessionModel;
    iget-object v6, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->userId:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 294
    const-string/jumbo v6, ""

    iput-object v6, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->autoLoginToken:Ljava/lang/String;

    .line 295
    const-string/jumbo v6, ""

    iput-object v6, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->sid:Ljava/lang/String;

    .line 297
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 271
    .end local v0    # "model":Lcom/ali/user/enterprise/base/data/SessionModel;
    .end local v1    # "savedJson":Ljava/lang/String;
    .end local v2    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    .end local v3    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 281
    .restart local v1    # "savedJson":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-class v4, Lcom/ali/user/enterprise/base/data/SessionList;

    invoke-static {v1, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ali/user/enterprise/base/data/SessionList;
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v2    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    goto :goto_1

    .line 283
    .end local v2    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    :catch_0
    move-exception v4

    :try_start_3
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->emptySessionListFromFile()V

    goto :goto_0

    .line 303
    .restart local v2    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    .restart local v3    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    :cond_3
    iput-object v3, v2, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    .line 305
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "aliusersdk_session_lists"

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static convertEnvToMtop()I
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getEnvType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 111
    const/4 v0, 0x2

    .line 116
    .local v0, "alimmsdk_env":I
    :goto_0
    return v0

    .line 112
    .end local v0    # "alimmsdk_env":I
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getEnvType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 113
    const/4 v0, 0x1

    .restart local v0    # "alimmsdk_env":I
    goto :goto_0

    .line 115
    .end local v0    # "alimmsdk_env":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "alimmsdk_env":I
    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "encodedData"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object p0

    .line 173
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    .line 174
    .local v2, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 175
    .local v0, "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "decryptCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move-object p0, v1

    .line 180
    goto :goto_0

    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v1    # "decryptCode":Ljava/lang/String;
    .end local v2    # "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static emptySessionListFromFile()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "aliusersdk_session_lists"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "rawData"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    .line 150
    .local v2, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 151
    .local v0, "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "encodeCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v1    # "encodeCode":Ljava/lang/String;
    .end local v2    # "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local p0    # "rawData":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v1    # "encodeCode":Ljava/lang/String;
    .restart local v2    # "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .restart local p0    # "rawData":Ljava/lang/String;
    :cond_1
    move-object p0, v1

    .line 156
    goto :goto_0

    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v1    # "encodeCode":Ljava/lang/String;
    .end local v2    # "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static findSessionFromModel(Ljava/lang/String;)Lcom/ali/user/enterprise/base/data/SessionModel;
    .locals 5
    .param p0, "userid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 348
    :goto_0
    return-object v1

    .line 337
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSessionListFromFile()Lcom/ali/user/enterprise/base/data/SessionList;

    move-result-object v0

    .line 338
    .local v0, "list":Lcom/ali/user/enterprise/base/data/SessionList;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v1, v2

    .line 339
    goto :goto_0

    .line 342
    :cond_2
    iget-object v3, v0, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/enterprise/base/data/SessionModel;

    .line 343
    .local v1, "sessionModel":Lcom/ali/user/enterprise/base/data/SessionModel;
    iget-object v4, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->userId:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .end local v1    # "sessionModel":Lcom/ali/user/enterprise/base/data/SessionModel;
    :cond_4
    move-object v1, v2

    .line 348
    goto :goto_0
.end method

.method public static getAppKey(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, p0, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 53
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getSecurityBodyOpen(JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "t"    # J
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 94
    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v7

    .line 95
    .local v7, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const-class v1, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    invoke-virtual {v7, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    .line 96
    .local v0, "securityBodyComponent":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->convertEnvToMtop()I

    move-result v6

    .line 97
    .local v6, "env":I
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;->getSecurityBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 103
    .end local v0    # "securityBodyComponent":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    .end local v6    # "env":I
    .end local v7    # "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :goto_0
    return-object v9

    .line 101
    :catch_0
    move-exception v8

    .line 102
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "login.SecurityManager"

    invoke-static {v1, v8}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    .end local v8    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .locals 3

    .prologue
    .line 38
    const-class v2, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->mSecurityGuardManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 40
    :try_start_1
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    sput-object v1, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->mSecurityGuardManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->mSecurityGuardManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 41
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_0
    move-exception v0

    .line 42
    .restart local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :try_start_3
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getSessionListFromFile()Lcom/ali/user/enterprise/base/data/SessionList;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 313
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 314
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "aliusersdk_session_lists"

    invoke-static {v3, v4}, Lcom/ali/user/enterprise/base/utils/FileUtils;->readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "sessionJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 328
    :goto_0
    return-object v1

    .line 319
    :cond_0
    const-class v3, Lcom/ali/user/enterprise/base/data/SessionList;

    invoke-static {v0, v3}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/enterprise/base/data/SessionList;

    .line 322
    .local v1, "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v1    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method

.method public static getWUA()Lcom/ali/user/enterprise/base/storage/WUAData;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 65
    :try_start_0
    new-instance v8, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 67
    .local v2, "mgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v3

    .line 69
    .local v3, "securityBodyComp":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    if-eqz v3, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 71
    .local v6, "t":J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "tString":Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "appkey":Ljava/lang/String;
    invoke-static {v6, v7, v0}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSecurityBodyOpen(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "securityBodyData":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    invoke-interface {v3, v5, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    :cond_0
    new-instance v8, Lcom/ali/user/enterprise/base/storage/WUAData;

    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v10

    invoke-interface {v10}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getAppkey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v5, v4}, Lcom/ali/user/enterprise/base/storage/WUAData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "appkey":Ljava/lang/String;
    .end local v3    # "securityBodyComp":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .end local v4    # "securityBodyData":Ljava/lang/String;
    .end local v5    # "tString":Ljava/lang/String;
    .end local v6    # "t":J
    :goto_0
    return-object v8

    .restart local v3    # "securityBodyComp":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    :cond_1
    move-object v8, v9

    .line 80
    goto :goto_0

    .end local v3    # "securityBodyComp":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    :cond_2
    move-object v8, v9

    .line 83
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "login.SecurityManager"

    invoke-static {v8, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    .line 87
    goto :goto_0
.end method

.method public static declared-synchronized putSessionModelToFile(Lcom/ali/user/enterprise/base/data/SessionModel;)V
    .locals 10
    .param p0, "sessionModelParam"    # Lcom/ali/user/enterprise/base/data/SessionModel;

    .prologue
    .line 217
    const-class v7, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "aliusersdk_session_lists"

    invoke-static {v6, v8}, Lcom/ali/user/enterprise/base/utils/FileUtils;->readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "savedJson":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    new-instance v4, Lcom/ali/user/enterprise/base/data/SessionList;

    invoke-direct {v4}, Lcom/ali/user/enterprise/base/data/SessionList;-><init>()V

    .line 232
    .local v4, "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v5, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    if-eqz v4, :cond_2

    .line 237
    iget-object v6, v4, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 238
    iget-object v6, v4, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ali/user/enterprise/base/data/SessionModel;

    .line 239
    .local v2, "model":Lcom/ali/user/enterprise/base/data/SessionModel;
    iget-object v8, p0, Lcom/ali/user/enterprise/base/data/SessionModel;->userId:Ljava/lang/String;

    iget-object v9, v2, Lcom/ali/user/enterprise/base/data/SessionModel;->userId:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 240
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 217
    .end local v2    # "model":Lcom/ali/user/enterprise/base/data/SessionModel;
    .end local v3    # "savedJson":Ljava/lang/String;
    .end local v4    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    .end local v5    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 225
    .restart local v3    # "savedJson":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-class v6, Lcom/ali/user/enterprise/base/data/SessionList;

    invoke-static {v3, v6}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ali/user/enterprise/base/data/SessionList;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    goto :goto_0

    .line 227
    .end local v4    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    :catch_0
    move-exception v6

    :try_start_2
    new-instance v4, Lcom/ali/user/enterprise/base/data/SessionList;

    invoke-direct {v4}, Lcom/ali/user/enterprise/base/data/SessionList;-><init>()V

    .line 228
    .restart local v4    # "sessionList":Lcom/ali/user/enterprise/base/data/SessionList;
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->emptySessionListFromFile()V

    goto :goto_0

    .line 247
    .restart local v5    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    :cond_2
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getMaxSessionSize()I

    move-result v1

    .line 248
    .local v1, "maxSessionListSize":I
    const/16 v6, 0x14

    if-le v1, v6, :cond_3

    .line 249
    const/16 v1, 0x14

    .line 251
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v1

    .line 253
    .local v0, "delta":I
    if-lez v0, :cond_4

    .line 254
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 255
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 260
    :cond_4
    iput-object v5, v4, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    .line 262
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "aliusersdk_session_lists"

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    monitor-exit v7

    return-void
.end method

.method public static declared-synchronized removeSessionModelFromFile(Ljava/lang/String;)V
    .locals 8
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 192
    const-class v5, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 197
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSessionListFromFile()Lcom/ali/user/enterprise/base/data/SessionList;

    move-result-object v1

    .line 198
    .local v1, "list":Lcom/ali/user/enterprise/base/data/SessionList;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    iget-object v4, v1, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ali/user/enterprise/base/data/SessionModel;

    .line 203
    .local v2, "sessionModel":Lcom/ali/user/enterprise/base/data/SessionModel;
    iget-object v6, v2, Lcom/ali/user/enterprise/base/data/SessionModel;->userId:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 206
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 211
    .end local v1    # "list":Lcom/ali/user/enterprise/base/data/SessionList;
    .end local v2    # "sessionModel":Lcom/ali/user/enterprise/base/data/SessionModel;
    .end local v3    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 209
    .restart local v1    # "list":Lcom/ali/user/enterprise/base/data/SessionList;
    .restart local v3    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/data/SessionModel;>;"
    :cond_3
    :try_start_3
    iput-object v3, v1, Lcom/ali/user/enterprise/base/data/SessionList;->sessionModels:Ljava/util/List;

    .line 210
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "aliusersdk_session_lists"

    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static staticSafeEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 134
    :try_start_0
    new-instance v2, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    .line 136
    .local v0, "mgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 137
    .local v1, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v1, :cond_0

    .line 138
    const/16 v2, 0x10

    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getAppkey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v1, v2, v3, p0, v4}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 143
    .end local v0    # "mgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local v1    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "input":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

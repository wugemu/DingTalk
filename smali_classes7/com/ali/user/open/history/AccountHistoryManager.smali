.class public Lcom/ali/user/open/history/AccountHistoryManager;
.super Ljava/lang/Object;
.source "AccountHistoryManager.java"


# static fields
.field private static volatile a:Lcom/ali/user/open/history/AccountHistoryManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/open/history/HistoryAccount;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 206
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 207
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    .line 210
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_0
    const-string/jumbo v4, "userId"

    iget-object v5, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v4, "tokenKey"

    iget-object v5, v0, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v4, "nick"

    iget-object v5, v0, Lcom/ali/user/open/history/HistoryAccount;->nick:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v4, "email"

    iget-object v5, v0, Lcom/ali/user/open/history/HistoryAccount;->email:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v4, "mobile"

    iget-object v0, v0, Lcom/ali/user/open/history/HistoryAccount;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 221
    const-string/jumbo v0, ""

    .line 226
    :goto_1
    return-object v0

    .line 224
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/open/history/HistoryAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 187
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_0

    .line 189
    new-instance v4, Lcom/ali/user/open/history/HistoryAccount;

    invoke-direct {v4}, Lcom/ali/user/open/history/HistoryAccount;-><init>()V

    .line 190
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    .line 191
    const-string/jumbo v5, "tokenKey"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    .line 192
    const-string/jumbo v5, "mobile"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ali/user/open/history/HistoryAccount;->mobile:Ljava/lang/String;

    .line 193
    const-string/jumbo v5, "nick"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ali/user/open/history/HistoryAccount;->nick:Ljava/lang/String;

    .line 194
    const-string/jumbo v5, "email"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ali/user/open/history/HistoryAccount;->email:Ljava/lang/String;

    .line 195
    const-string/jumbo v5, "t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/ali/user/open/history/HistoryAccount;->t:Ljava/lang/String;

    .line 196
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 202
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/ali/user/open/history/AccountHistoryManager;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/ali/user/open/history/AccountHistoryManager;->a:Lcom/ali/user/open/history/AccountHistoryManager;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/ali/user/open/history/AccountHistoryManager;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/ali/user/open/history/AccountHistoryManager;->a:Lcom/ali/user/open/history/AccountHistoryManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/ali/user/open/history/AccountHistoryManager;

    invoke-direct {v0}, Lcom/ali/user/open/history/AccountHistoryManager;-><init>()V

    sput-object v0, Lcom/ali/user/open/history/AccountHistoryManager;->a:Lcom/ali/user/open/history/AccountHistoryManager;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/ali/user/open/history/AccountHistoryManager;->a:Lcom/ali/user/open/history/AccountHistoryManager;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearHistoryAccount()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v1, "tb_history_acounts"

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/StorageService;->removeDDpExValue(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public findHistoryAccount(Ljava/lang/String;)Lcom/ali/user/open/history/HistoryAccount;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/open/history/AccountHistoryManager;->getHistoryAccounts()Ljava/util/List;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    .line 137
    iget-object v3, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 141
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 143
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getHistoryAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/open/history/HistoryAccount;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v1, "tb_history_acounts"

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/StorageService;->getDDpExValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    :goto_0
    return-object v0

    .line 170
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ali/user/open/history/AccountHistoryManager;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "tb_history_acounts"

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/StorageService;->removeDDpExValue(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public matchHistoryAccount(Ljava/lang/String;)Lcom/ali/user/open/history/HistoryAccount;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/ali/user/open/history/AccountHistoryManager;->getHistoryAccounts()Ljava/util/List;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    .line 153
    iget-object v2, v0, Lcom/ali/user/open/history/HistoryAccount;->nick:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/ali/user/open/history/HistoryAccount;->email:Ljava/lang/String;

    .line 154
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/ali/user/open/history/HistoryAccount;->mobile:Ljava/lang/String;

    .line 155
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putLoginHistory(Lcom/ali/user/open/history/HistoryAccount;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/core/config/ConfigManager;->isSaveHistoryWithSalt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p1, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/ali/user/open/core/service/StorageService;->saveSafeToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/open/history/AccountHistoryManager;->getHistoryAccounts()Ljava/util/List;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/open/core/config/ConfigManager;->getMaxHistoryAccount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 110
    iget-object v3, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    iget-object v4, p1, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_3
    invoke-direct {p0, v1}, Lcom/ali/user/open/history/AccountHistoryManager;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 122
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "tb_history_acounts"

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/StorageService;->putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-direct {p0, v0}, Lcom/ali/user/open/history/AccountHistoryManager;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "tb_history_acounts"

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/StorageService;->putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeHistoryAccount(Lcom/ali/user/open/history/HistoryAccount;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    :try_start_0
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p1, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/StorageService;->removeSafeToken(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "tb_history_acounts"

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/StorageService;->getDDpExValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 57
    :goto_1
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :goto_2
    if-eqz v0, :cond_4

    .line 69
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    .line 71
    iget-object v3, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    iget-object v4, p1, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 60
    :cond_3
    :try_start_4
    invoke-direct {p0, v0}, Lcom/ali/user/open/history/AccountHistoryManager;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_2

    .line 62
    :catch_2
    move-exception v0

    .line 63
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "tb_history_acounts"

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/StorageService;->removeDDpExValue(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 79
    :cond_5
    if-eqz v1, :cond_0

    .line 80
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    :cond_6
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v1, "tb_history_acounts"

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/StorageService;->removeDDpExValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_7
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "tb_history_acounts"

    invoke-direct {p0, v1}, Lcom/ali/user/open/history/AccountHistoryManager;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/StorageService;->putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

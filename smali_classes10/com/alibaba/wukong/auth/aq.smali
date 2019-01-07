.class public Lcom/alibaba/wukong/auth/aq;
.super Ljava/lang/Object;
.source "CloudSettingPref.java"


# instance fields
.field private aV:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/aq;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, "cloudSettingPref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 47
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1, p2}, Lcom/alibaba/wukong/auth/aq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-virtual {p0, v1}, Lcom/alibaba/wukong/auth/aq;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 49
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/aq;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    .local v0, "cloudSettingPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, ""

    .line 55
    .local v1, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 63
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 59
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-static {p1, p2}, Lcom/alibaba/wukong/auth/aq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/alibaba/wukong/auth/ap;
    .locals 5
    .param p1, "jString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 146
    :goto_0
    return-object v2

    .line 132
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "jObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/alibaba/wukong/auth/ap;

    invoke-direct {v2}, Lcom/alibaba/wukong/auth/ap;-><init>()V

    .line 134
    .local v2, "object":Lcom/alibaba/wukong/auth/ap;
    const-string/jumbo v4, "module"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/auth/ap;->mModuleName:Ljava/lang/String;

    .line 135
    const-string/jumbo v4, "key"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/auth/ap;->mKey:Ljava/lang/String;

    .line 136
    const-string/jumbo v4, "value"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/auth/ap;->mValue:Ljava/lang/String;

    .line 137
    const-string/jumbo v4, "effectScope"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->fromValue(I)Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/auth/ap;->aT:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 140
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "object":Lcom/alibaba/wukong/auth/ap;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    move-object v2, v3

    .line 146
    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method

.method private d(Lcom/alibaba/wukong/settings/CloudSetting;)Ljava/lang/String;
    .locals 5
    .param p1, "cloudSetting"    # Lcom/alibaba/wukong/settings/CloudSetting;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-object v2

    .line 107
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "module"

    invoke-interface {p1}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v3, "key"

    invoke-interface {p1}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v3, "value"

    invoke-interface {p1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v3, "effectScope"

    invoke-interface {p1}, Lcom/alibaba/wukong/settings/CloudSetting;->getEffectScope()Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->toValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 113
    .end local v1    # "jObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/aq;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized o()Landroid/content/SharedPreferences;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    .line 244
    .local v0, "openId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wk_im_cloud_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/AuthService;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "prefName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/wukong/auth/AuthService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;

    .line 253
    .end local v0    # "openId":J
    .end local v2    # "prefName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 248
    .restart local v0    # "openId":J
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    .end local v0    # "openId":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 251
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(JLjava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5
    .param p1, "openId"    # J
    .param p3, "domain"    # Ljava/lang/String;

    .prologue
    .line 257
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wk_im_cloud_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "prefName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/wukong/auth/AuthService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;

    .line 263
    .end local v0    # "prefName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 261
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/alibaba/wukong/auth/aq;->aV:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "modules"    # [Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 150
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v7, p1

    array-length v8, p2

    if-eq v7, v8, :cond_2

    :cond_0
    move-object v2, v6

    .line 170
    :cond_1
    :goto_0
    return-object v2

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/aq;->n()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 154
    .local v5, "sharedPref":Landroid/content/SharedPreferences;
    if-nez v5, :cond_3

    move-object v2, v6

    .line 156
    goto :goto_0

    .line 158
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, p1

    if-ge v0, v7, :cond_1

    .line 160
    aget-object v7, p1, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, p2, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "preKey":Ljava/lang/String;
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "jString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alibaba/wukong/auth/aq;->d(Ljava/lang/String;)Lcom/alibaba/wukong/auth/ap;

    move-result-object v4

    .line 166
    .local v4, "setting":Lcom/alibaba/wukong/auth/ap;
    if-eqz v4, :cond_4

    .line 167
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v1    # "jString":Ljava/lang/String;
    .end local v3    # "preKey":Ljava/lang/String;
    .end local v4    # "setting":Lcom/alibaba/wukong/auth/ap;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(J)Z
    .locals 3
    .param p1, "version"    # J

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/aq;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, "cloudSettingPref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 206
    const/4 v2, 0x0

    .line 211
    :goto_0
    return v2

    .line 208
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 209
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "wk_im_cloud_ver"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-virtual {p0, v1}, Lcom/alibaba/wukong/auth/aq;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 211
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 234
    const/16 v0, 0x9

    invoke-static {v0}, Lifz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public bulkMerge(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    .local p1, "cloudSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 100
    :goto_0
    return v2

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSetting;

    .line 95
    .local v1, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    invoke-direct {p0, v1}, Lcom/alibaba/wukong/auth/aq;->d(Lcom/alibaba/wukong/settings/CloudSetting;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "jString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Lcom/alibaba/wukong/auth/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 100
    .end local v0    # "jString":Ljava/lang/String;
    .end local v1    # "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public c(Lcom/alibaba/wukong/settings/CloudSetting;)Z
    .locals 3
    .param p1, "cloudSetting"    # Lcom/alibaba/wukong/settings/CloudSetting;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/auth/aq;->d(Lcom/alibaba/wukong/settings/CloudSetting;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "jString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/wukong/auth/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wukong/auth/aq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "jString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alibaba/wukong/auth/aq;->d(Ljava/lang/String;)Lcom/alibaba/wukong/auth/ap;

    move-result-object v1

    return-object v1
.end method

.method public getVersion()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 215
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/aq;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    .local v0, "cloudSettingPref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-wide v2

    :cond_0
    const-string/jumbo v1, "wk_im_cloud_ver"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

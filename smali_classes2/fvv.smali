.class public Lfvv;
.super Ljava/lang/Object;
.source "ConfigSwitchService.java"


# static fields
.field private static volatile b:Lfvv;

.field private static volatile d:Z


# instance fields
.field public a:Ljava/util/Map;
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

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lfvv;->b:Lfvv;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lfvv;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfvv;-><init>(Z)V

    .line 93
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "isInit"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfvv;->c:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfvv;->a:Ljava/util/Map;

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lfvv;->c()V

    .line 99
    :cond_0
    return-void
.end method

.method public static a()Lfvv;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Lfvv;->a(Z)Lfvv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lfvv;
    .locals 3
    .param p0, "isInit"    # Z

    .prologue
    .line 76
    sget-object v0, Lfvv;->b:Lfvv;

    if-eqz v0, :cond_0

    sget-boolean v0, Lfvv;->d:Z

    if-nez v0, :cond_1

    .line 77
    :cond_0
    const-class v1, Lfvv;

    monitor-enter v1

    .line 78
    :try_start_0
    new-instance v0, Lfvv;

    invoke-direct {v0, p0}, Lfvv;-><init>(Z)V

    sput-object v0, Lfvv;->b:Lfvv;

    .line 79
    const-string/jumbo v0, "new instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lfvv;->b:Lfvv;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "switchKey"    # Ljava/lang/String;
    .param p1, "orgId"    # Ljava/lang/String;

    .prologue
    .line 352
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "key_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "orgJsonData"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 140
    if-nez p2, :cond_1

    .line 141
    const-string/jumbo v6, "orgJsonData is null"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 146
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    .local v5, "switchKey":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2173
    .local v4, "objValue":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 2174
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "objValue":Ljava/lang/Object;
    move-object v0, v4

    .line 151
    .local v0, "booleanValue":Ljava/lang/Boolean;
    :goto_1
    if-eqz v0, :cond_6

    .line 153
    iget-object v6, p0, Lfvv;->c:Ljava/util/Map;

    invoke-static {v5, p1}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    iget-object v6, p0, Lfvv;->c:Ljava/util/Map;

    invoke-static {v5}, Lfvv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2175
    .end local v0    # "booleanValue":Ljava/lang/Boolean;
    .restart local v4    # "objValue":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 2176
    check-cast v4, Ljava/lang/String;

    .line 2177
    .end local v4    # "objValue":Ljava/lang/Object;
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2178
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 2179
    :cond_4
    const-string/jumbo v6, "false"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2180
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 2183
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    .restart local v0    # "booleanValue":Ljava/lang/Boolean;
    :cond_6
    const/4 v1, 0x0

    .line 160
    .local v1, "configString":Ljava/lang/String;
    invoke-static {p2, v5}, Lcoz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 161
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_7

    .line 162
    const-string/jumbo v6, "v"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 165
    iget-object v6, p0, Lfvv;->a:Ljava/util/Map;

    invoke-static {v5, p1}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lfvv;->b:Lfvv;

    .line 87
    sput-boolean v1, Lfvv;->d:Z

    .line 88
    const-string/jumbo v0, "clear"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "switchKey"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "key_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_default"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "switchKey"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "key_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_local"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, p1, v0, v0}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "orgId"    # J

    .prologue
    const/4 v4, 0x0

    .line 264
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lfvv;->a(Ljava/lang/String;JZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;JZZ)Z
    .locals 10
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "defValue"    # Z
    .param p5, "ignoreDingtalkSpecConf"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 269
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v5, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v3, v5, :cond_1

    .line 270
    :cond_0
    const-wide/32 v6, 0x498c54

    cmp-long v3, p2, v6

    if-nez v3, :cond_1

    if-nez p5, :cond_1

    move v0, v4

    .line 293
    :goto_0
    return v0

    .line 280
    :cond_1
    const-string/jumbo v3, "getConfigSwitch,key=%s,encrypt_orgId=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    .line 6120
    const-wide/32 v6, 0x6a01e35

    sub-long v6, p2, v6

    .line 280
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    const-string/jumbo v3, "global"

    invoke-static {p1, v3}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "mapKey":Ljava/lang/String;
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 7022
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 286
    .local v0, "globalValue":Z
    const-string/jumbo v3, "globalValue=%b"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    .end local v0    # "globalValue":Z
    :cond_2
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3, p4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 292
    .local v2, "orgValue":Z
    const-string/jumbo v3, "orgValue=%b"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 293
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZZ)Z
    .locals 12
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "ignoreDingtalkSpecConfig"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 222
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v6, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v3, v6, :cond_5

    .line 2365
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 2366
    if-eqz v3, :cond_1

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_1
    move v3, v5

    .line 223
    :goto_0
    if-eqz v3, :cond_5

    if-nez p3, :cond_5

    move v0, v4

    .line 260
    :goto_1
    return v0

    .line 2370
    :cond_2
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2371
    if-eqz v3, :cond_3

    .line 2375
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/32 v10, 0x498c54

    cmp-long v3, v8, v10

    if-nez v3, :cond_3

    move v3, v4

    .line 2376
    goto :goto_0

    :cond_4
    move v3, v5

    .line 2380
    goto :goto_0

    .line 228
    :cond_5
    const-string/jumbo v3, "getConfigSwitch,key=%s,defalutValue=%b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const-string/jumbo v3, "global"

    invoke-static {p1, v3}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "mapKey":Ljava/lang/String;
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 233
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 3022
    invoke-static {v3, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 234
    .local v0, "globalValue":Z
    const-string/jumbo v3, "globalValue=%b"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 236
    .end local v0    # "globalValue":Z
    :cond_6
    if-eqz p2, :cond_7

    .line 237
    const-string/jumbo v3, "defaultValue=%b"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    .line 238
    goto :goto_1

    .line 241
    :cond_7
    move v2, p2

    .line 243
    .local v2, "orgValue":Z
    invoke-static {p1}, Lfvv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3193
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 3194
    if-eqz v3, :cond_8

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_a

    .line 3195
    :cond_8
    const-string/jumbo v3, "===userProfileExtensionObject==null==="

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_9
    :goto_2
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 249
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 5022
    invoke-static {v3, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 259
    :goto_3
    const-string/jumbo v3, "orgValue=%b"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 260
    goto/16 :goto_1

    .line 3199
    :cond_a
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 3200
    if-eqz v3, :cond_c

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_d

    .line 3201
    :cond_c
    const-string/jumbo v3, "===orgEmployeeExtensionObject==null==="

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 3205
    :cond_d
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3206
    iget-object v7, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 4022
    invoke-static {v3, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 3206
    if-eqz v3, :cond_b

    .line 3207
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-static {p1}, Lfvv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3212
    :cond_e
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-static {p1}, Lfvv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 251
    :cond_f
    invoke-static {p1}, Lfvv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 253
    iget-object v3, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 6022
    invoke-static {v3, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 253
    goto/16 :goto_3

    .line 255
    :cond_10
    const-string/jumbo v3, "mValues not contain switchKey:%s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v3, v6}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "switchKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 298
    const-string/jumbo v2, "global"

    invoke-static {p1, v2}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "mapKey":Ljava/lang/String;
    iget-object v2, p0, Lfvv;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    .local v0, "configString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    .end local v0    # "configString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 304
    .restart local v0    # "configString":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lfvv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lfvv;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7328
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 7329
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 7330
    :cond_1
    const-string/jumbo v2, "===userProfileExtensionObject==null==="

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_2
    :goto_1
    iget-object v2, p0, Lfvv;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .line 7334
    :cond_3
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 7335
    if-eqz v2, :cond_5

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    .line 7336
    :cond_5
    const-string/jumbo v2, "===orgEmployeeExtensionObject==null==="

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 7340
    :cond_6
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7341
    iget-object v4, p0, Lfvv;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7342
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 7343
    iget-object v3, p0, Lfvv;->a:Ljava/util/Map;

    invoke-static {p1}, Lfvv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7348
    :cond_7
    iget-object v2, p0, Lfvv;->a:Ljava/util/Map;

    invoke-static {p1}, Lfvv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 103
    iget-object v7, p0, Lfvv;->c:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v7, p0, Lfvv;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 105
    const-string/jumbo v7, "parseData,encrypt_uid=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->b()Lchy;

    move-result-object v10

    invoke-virtual {v10}, Lchy;->getCurrentUid()J

    move-result-wide v10

    .line 1120
    const-wide/32 v12, 0x6a01e35

    sub-long/2addr v10, v12

    .line 105
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    const-string/jumbo v7, "pref_key_org_config_data"

    invoke-static {v7}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "switchData":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const-string/jumbo v7, "switchData is empty"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 115
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 120
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-nez v1, :cond_1

    .line 121
    const-string/jumbo v7, "jsonObject is null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "JSONException:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",data:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lfxo;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 125
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 126
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 130
    .local v5, "orgJsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v3, v5}, Lfvv;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 133
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "orgJsonObject":Lorg/json/JSONObject;
    :cond_2
    const/4 v7, 0x1

    sput-boolean v7, Lfvv;->d:Z

    .line 1187
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    .line 1188
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "action_config_switch_key_ready"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    invoke-virtual {v7, v8}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

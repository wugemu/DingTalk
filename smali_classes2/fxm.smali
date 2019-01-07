.class public Lfxm;
.super Ljava/lang/Object;
.source "UicMtopHelper.java"


# static fields
.field private static volatile a:Lfxm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a()Lfxm;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lfxm;->a:Lfxm;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lfxm;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lfxm;->a:Lfxm;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lfxm;

    invoke-direct {v0}, Lfxm;-><init>()V

    sput-object v0, Lfxm;->a:Lfxm;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lfxm;->a:Lfxm;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lfxm;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lfxm;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;
    .param p4, "x4"    # Lcma;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lfxm;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcma;)V

    return-void
.end method

.method public static b()Lcom/ali/user/open/core/config/Environment;
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    .line 197
    .local v0, "dingtalkEnvironment":I
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v0, v1, :cond_0

    .line 198
    sget-object v1, Lcom/ali/user/open/core/config/Environment;->PRE:Lcom/ali/user/open/core/config/Environment;

    .line 205
    :goto_0
    return-object v1

    .line 201
    :cond_0
    if-nez v0, :cond_1

    .line 202
    sget-object v1, Lcom/ali/user/open/core/config/Environment;->TEST:Lcom/ali/user/open/core/config/Environment;

    goto :goto_0

    .line 205
    :cond_1
    sget-object v1, Lcom/ali/user/open/core/config/Environment;->ONLINE:Lcom/ali/user/open/core/config/Environment;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcma;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "paramJsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 57
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v4, "headers"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    .local v2, "headers":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "headers":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .restart local v2    # "headers":Lorg/json/JSONObject;
    const-string/jumbo v4, "headers"

    invoke-virtual {p3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_0
    const-string/jumbo v4, "x-uid"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v4, "x-sid"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v4, "sid"

    invoke-virtual {p3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-class v4, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;

    .line 69
    .local v3, "tunnelIService":Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;
    new-instance v1, Lfxm$1;

    invoke-direct {v1, p0, p4}, Lfxm$1;-><init>(Lfxm;Lcma;)V

    .line 87
    .local v1, "handler":Liyv;, "Liyv<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;->mtop(Ljava/lang/String;Liyv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "handler":Liyv;, "Liyv<Ljava/lang/String;>;"
    .end local v2    # "headers":Lorg/json/JSONObject;
    .end local v3    # "tunnelIService":Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;
    :cond_1
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p4, :cond_1

    .line 90
    new-instance v4, Lfxm$2;

    invoke-direct {v4, p0, p4, v0}, Lfxm$2;-><init>(Lfxm;Lcma;Ljava/lang/Exception;)V

    invoke-static {v4}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

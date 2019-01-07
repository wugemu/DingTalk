.class public Liec;
.super Ljava/lang/Object;
.source "AVEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liec$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Liec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liec;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Liec;->b:Z

    .line 32
    const/4 v0, 0x0

    sput-object v0, Liec;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v0, Liec;->b:Z

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Liec;->a:Ljava/lang/String;

    const-string/jumbo v1, "Get av service fail"

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lifa;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 4

    .prologue
    .line 174
    const-class v1, Liec;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Liec;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    monitor-exit v1

    return-void

    .line 178
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    .line 8082
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v2, :cond_2

    .line 8084
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 8242
    iget-object v3, v2, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v3, :cond_1

    .line 8243
    iget-object v3, v2, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v3}, Lcom/taobao/conf/TBConf;->release()V

    .line 8244
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    .line 8085
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 8087
    :cond_2
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    if-eqz v2, :cond_3

    .line 8088
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    invoke-virtual {v2}, Liey;->b()V

    .line 8089
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    .line 8091
    :cond_3
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 8092
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c()V

    .line 8093
    sget-object v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a:Ljava/lang/String;

    const-string/jumbo v3, "-deInitSDK"

    invoke-static {v2, v3}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7115
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b:Landroid/content/Context;

    .line 179
    invoke-static {}, Lifa;->b()V

    .line 180
    invoke-static {}, Lies;->a()Lies;

    move-result-object v0

    .line 9058
    iget-boolean v2, v0, Lies;->a:Z

    if-eqz v2, :cond_6

    .line 9061
    iget-object v2, v0, Lies;->b:Liet;

    if-eqz v2, :cond_4

    .line 9062
    const/4 v2, 0x0

    iput-object v2, v0, Lies;->b:Liet;

    .line 9064
    :cond_4
    iget-object v2, v0, Lies;->c:Lieu;

    if-eqz v2, :cond_5

    .line 9065
    const/4 v2, 0x0

    iput-object v2, v0, Lies;->c:Lieu;

    .line 9067
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v0, Lies;->a:Z

    .line 181
    :cond_6
    sget-object v0, Liec;->c:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 182
    const/4 v0, 0x0

    sput-object v0, Liec;->c:Landroid/os/Handler;

    .line 184
    :cond_7
    const/4 v0, 0x0

    sput-boolean v0, Liec;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Liec$a;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Liec$a;

    .prologue
    .line 40
    const-class v1, Liec;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Liec;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 43
    :cond_1
    :try_start_1
    invoke-static {}, Lifa;->a()V

    .line 44
    sget-object v0, Liec;->c:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Liec;->c:Landroid/os/Handler;

    .line 48
    :cond_2
    invoke-static {}, Lifc;->a()Lifc;

    move-result-object v0

    new-instance v2, Liec$1;

    invoke-direct {v2, p0, p1}, Liec$1;-><init>(Landroid/content/Context;Liec$a;)V

    .line 1269
    iget-boolean v3, v0, Lifc;->b:Z

    if-nez v3, :cond_0

    .line 1272
    iput-object p0, v0, Lifc;->c:Landroid/content/Context;

    .line 1273
    iput-object v2, v0, Lifc;->d:Lifc$b;

    .line 1275
    sget-object v2, Lifc;->a:Ljava/lang/String;

    const-string/jumbo v3, "loadVoipSO"

    invoke-static {v2, v3}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    new-instance v2, Lifc$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lifc$a;-><init>(Lifc;B)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lifc$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lied$g;)V
    .locals 2
    .param p0, "listener"    # Lied$g;

    .prologue
    .line 94
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    .line 2212
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 2213
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 3074
    iput-object p0, v0, Liez;->i:Lied$g;

    .line 95
    :cond_0
    return-void
.end method

.method public static a(Lied$i;)V
    .locals 1
    .param p0, "listener"    # Lied$i;

    .prologue
    .line 101
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    .line 3202
    iput-object p0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->f:Lied$i;

    .line 102
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7
    .param p0, "openId"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-boolean v1, Liec;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    :cond_0
    sget-object v1, Liec;->a:Ljava/lang/String;

    const-string/jumbo v2, "Pull signal message fail"

    invoke-static {v1, v2}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v3

    .line 6680
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 6683
    const/4 v2, 0x0

    .line 6685
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6686
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "req"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6687
    const-string/jumbo v4, "method"

    const-string/jumbo v5, "pullmsg"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6688
    const-string/jumbo v4, "fromId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6690
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 6694
    :goto_1
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6695
    const-class v1, Lcom/alibaba/wukong/openav/internal/channel/service/VregisterService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/openav/internal/channel/service/VregisterService;

    new-instance v4, Lcom/alibaba/wukong/openav/internal/engine/AVCore$2;

    invoke-direct {v4, v3}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$2;-><init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;)V

    invoke-interface {v1, v2, v4}, Lcom/alibaba/wukong/openav/internal/channel/service/VregisterService;->sendSignalMsg(Ljava/lang/String;Liyv;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    .line 6691
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    .line 6692
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "openNick"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 114
    sget-boolean v2, Liec;->b:Z

    if-nez v2, :cond_0

    .line 115
    sget-object v2, Liec;->a:Ljava/lang/String;

    const-string/jumbo v3, "Register user fail"

    invoke-static {v2, v3}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return v1

    .line 119
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v2

    .line 4194
    iput-object p1, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->g:Ljava/lang/String;

    .line 4195
    iput-object p0, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->h:Ljava/lang/String;

    .line 4196
    iget-object v3, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v3, :cond_1

    .line 4197
    iget-object v3, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    iget-object v4, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->h:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->g:Ljava/lang/String;

    .line 5035
    iget-object v5, v3, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v5, :cond_1

    .line 5036
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "VoIP:register, usrId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6033
    const-string/jumbo v6, "OpenAV"

    invoke-static {v6, v5}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5037
    iget-object v3, v3, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v3, v4, v2, p2, p3}, Lcom/taobao/conf/TBConf;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 28
    sput-boolean p0, Liec;->b:Z

    return p0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Liec;->b:Z

    return v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Liec;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Liec;->b:Z

    return v0
.end method

.class public Lcom/alibaba/wukong/auth/an;
.super Ljava/lang/Object;
.source "CloudSettingEventPoster.java"


# static fields
.field private static aR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lifn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/an;->aR:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/settings/CloudSetting;)V
    .locals 2
    .param p0, "setting"    # Lcom/alibaba/wukong/settings/CloudSetting;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/alibaba/wukong/auth/an;->b(Lcom/alibaba/wukong/settings/CloudSetting;)Ljava/util/ArrayList;

    move-result-object v0

    .line 26
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    new-instance v1, Lcom/alibaba/wukong/auth/an$1;

    invoke-direct {v1, v0}, Lcom/alibaba/wukong/auth/an$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lifn;)V
    .locals 2
    .param p0, "listener"    # Lifn;

    .prologue
    .line 55
    const-class v1, Lcom/alibaba/wukong/auth/an;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 58
    :goto_0
    monitor-exit v1

    return-void

    .line 57
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/an;->aR:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/auth/an$2;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/an$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/alibaba/wukong/auth/an;->aR:Ljava/util/List;

    return-object v0
.end method

.method private static b(Lcom/alibaba/wukong/settings/CloudSetting;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "message"    # Lcom/alibaba/wukong/settings/CloudSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0
.end method

.method public static declared-synchronized b(Lifn;)V
    .locals 2
    .param p0, "listener"    # Lifn;

    .prologue
    .line 61
    const-class v1, Lcom/alibaba/wukong/auth/an;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 64
    :goto_0
    monitor-exit v1

    return-void

    .line 63
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/an;->aR:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

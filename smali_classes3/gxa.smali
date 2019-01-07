.class public final Lgxa;
.super Ljava/lang/Object;
.source "TrackContentManager.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgxc;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Lgxd;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgwz;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lpc;


# direct methods
.method public constructor <init>(Lgxd;)V
    .locals 1
    .param p1, "imageFetcher"    # Lgxd;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgxa;->a:Ljava/util/Map;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lgxa;->b:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lgxa;->c:Lgxd;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgxa;->d:Ljava/util/Map;

    .line 128
    new-instance v0, Lgxa$1;

    invoke-direct {v0, p0}, Lgxa$1;-><init>(Lgxa;)V

    iput-object v0, p0, Lgxa;->e:Lpc;

    .line 34
    iput-object p1, p0, Lgxa;->c:Lgxd;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lgwz;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 113
    iget-object v1, p0, Lgxa;->d:Ljava/util/Map;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lgxa;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lgxa;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwz;

    monitor-exit v1

    .line 117
    :goto_0
    return-object v0

    .line 116
    :cond_0
    monitor-exit v1

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "targetName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lgxa;->d:Ljava/util/Map;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lgxa;->d:Ljava/util/Map;

    new-instance v2, Lgwz;

    invoke-direct {v2, p1}, Lgwz;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    new-instance v0, Lpd;

    iget-object v1, p0, Lgxa;->e:Lpc;

    invoke-direct {v0, v1, p1}, Lpd;-><init>(Lpc;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "https://ar-ailab.alibaba.com/api/theme/get/config?targetName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lpd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

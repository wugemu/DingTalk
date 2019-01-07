.class Lcom/amap/api/services/a/bk$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/bk;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/services/a/be;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/services/a/bk;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/bk;Landroid/content/Context;Lcom/amap/api/services/a/be;Z)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amap/api/services/a/bk$1;->d:Lcom/amap/api/services/a/bk;

    iput-object p2, p0, Lcom/amap/api/services/a/bk$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/services/a/bk$1;->b:Lcom/amap/api/services/a/be;

    iput-boolean p4, p0, Lcom/amap/api/services/a/bk$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/ca;

    iget-object v2, p0, Lcom/amap/api/services/a/bk$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/amap/api/services/a/ca;-><init>(Landroid/content/Context;Z)V

    .line 187
    iget-object v2, p0, Lcom/amap/api/services/a/bk$1;->b:Lcom/amap/api/services/a/be;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/ca;->a(Lcom/amap/api/services/a/be;)V

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/services/a/bk$1;->c:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :try_start_3
    new-instance v0, Lcom/amap/api/services/a/cb;

    iget-object v2, p0, Lcom/amap/api/services/a/bk$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/services/a/cb;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v2, Lcom/amap/api/services/a/cc;

    invoke-direct {v2}, Lcom/amap/api/services/a/cc;-><init>()V

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/cc;->c(Z)V

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/cc;->a(Z)V

    .line 198
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/cc;->b(Z)V

    .line 201
    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/cb;->a(Lcom/amap/api/services/a/cc;)V

    .line 202
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/a/bk$1;->d:Lcom/amap/api/services/a/bk;

    invoke-static {v0}, Lcom/amap/api/services/a/bk;->a(Lcom/amap/api/services/a/bk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bi;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 202
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method

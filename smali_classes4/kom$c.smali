.class final Lkom$c;
.super Lkni;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final a:Z

.field final c:I

.field final d:I

.field final synthetic e:Lkom;


# direct methods
.method constructor <init>(Lkom;ZII)V
    .locals 4
    .param p1, "this$0"    # Lkom;
    .param p2, "reply"    # Z
    .param p3, "payload1"    # I
    .param p4, "payload2"    # I

    .prologue
    .line 366
    iput-object p1, p0, Lkom$c;->e:Lkom;

    .line 367
    const-string/jumbo v0, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lkom;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lkni;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iput-boolean p2, p0, Lkom$c;->a:Z

    .line 369
    iput p3, p0, Lkom$c;->c:I

    .line 370
    iput p4, p0, Lkom$c;->d:I

    .line 371
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 374
    iget-object v1, p0, Lkom$c;->e:Lkom;

    iget-boolean v0, p0, Lkom$c;->a:Z

    iget v2, p0, Lkom$c;->c:I

    iget v3, p0, Lkom$c;->d:I

    .line 1379
    if-nez v0, :cond_0

    .line 1381
    monitor-enter v1

    .line 1382
    :try_start_0
    iget-boolean v4, v1, Lkom;->i:Z

    .line 1383
    const/4 v5, 0x1

    iput-boolean v5, v1, Lkom;->i:Z

    .line 1384
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    if-eqz v4, :cond_0

    .line 1386
    invoke-virtual {v1}, Lkom;->b()V

    .line 1395
    :goto_0
    return-void

    .line 1384
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1392
    :cond_0
    :try_start_2
    iget-object v4, v1, Lkom;->p:Lkop;

    invoke-virtual {v4, v0, v2, v3}, Lkop;->a(ZII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lkom;->b()V

    goto :goto_0
.end method

.class public Lfyn;
.super Lfyp;
.source "CountEvent.java"


# instance fields
.field public a:I

.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lfyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lfyp;->a()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 24
    .local v0, "jobject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "count"

    iget v2, p0, Lfyn;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string/jumbo v1, "value"

    iget-wide v2, p0, Lfyn;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-object v0

    .line 23
    .end local v0    # "jobject":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(DLjava/lang/Long;)V
    .locals 3
    .param p1, "value"    # D
    .param p3, "commitTime"    # Ljava/lang/Long;

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lfyn;->b:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lfyn;->b:D

    .line 17
    iget v0, p0, Lfyn;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfyn;->a:I

    .line 18
    invoke-super {p0, p3}, Lfyp;->c(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized fill([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lfyp;->fill([Ljava/lang/Object;)V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfyn;->b:D

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lfyn;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

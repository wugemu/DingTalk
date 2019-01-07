.class final Lalt;
.super Ljava/lang/Object;
.source "LogSqliteStore.java"

# interfaces
.implements Lals;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "SELECT * FROM %s ORDER BY %s ASC LIMIT %d"

    iput-object v0, p0, Lalt;->a:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "SELECT count(*) FROM %s"

    iput-object v0, p0, Lalt;->b:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "DELETE FROM  %s where _id in ( select _id from %s  ORDER BY priority ASC ,  _id ASC LIMIT %d )"

    iput-object v0, p0, Lalt;->c:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 4621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 42
    const-class v1, Lald;

    invoke-virtual {v0, v1}, Lako;->b(Ljava/lang/Class;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "logField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lamu;->b()V

    .line 60
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 5621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 60
    const-class v1, Lald;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "< ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 4
    .param p1, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 3621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 38
    const-class v1, Lald;

    const/4 v2, 0x0

    const-string/jumbo v3, "priority DESC , time DESC "

    invoke-virtual {v0, v1, v2, v3, p1}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 29
    invoke-virtual {v0, p1}, Lako;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()D
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 74
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 8621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 9573
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 10305
    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    .line 9573
    const-string/jumbo v1, "ut.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 9574
    const-wide/16 v0, 0x0

    .line 9575
    if-eqz v2, :cond_0

    .line 9576
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    div-double/2addr v0, v4

    .line 74
    :cond_0
    return-wide v0
.end method

.method public final b(I)I
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 65
    invoke-static {}, Lamu;->b()V

    .line 66
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 6621
    iget-object v1, v1, Lajw;->m:Lako;

    .line 66
    const-class v2, Lald;

    invoke-virtual {v1, v2}, Lako;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "tableName":Ljava/lang/String;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 7621
    iget-object v1, v1, Lajw;->m:Lako;

    .line 69
    const-class v2, Lald;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " _id in ( select _id from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  ORDER BY priority"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ASC , _id ASC LIMIT 1000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final declared-synchronized b(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 2621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 34
    invoke-virtual {v0, p1}, Lako;->b(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 10621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 84
    invoke-virtual {v0, p1}, Lako;->d(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

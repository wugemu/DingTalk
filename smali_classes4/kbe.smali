.class final Lkbe;
.super Ljvg$b;


# instance fields
.field a:Z

.field final synthetic b:Lkbd;


# direct methods
.method constructor <init>(Lkbd;)V
    .locals 1

    iput-object p1, p0, Lkbe;->b:Lkbd;

    invoke-direct {p0}, Ljvg$b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkbe;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1000
    :try_start_0
    sget-object v0, Ljuq;->a:Landroid/content/Context;

    .line 0
    const-string/jumbo v1, "http://resolver.msg.xiaomi.net/psc/?t=a"

    .line 2000
    const/4 v2, 0x0

    new-instance v3, Ljyy$a;

    invoke-direct {v3}, Ljyy$a;-><init>()V

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljyy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljyx;Z)Ljava/lang/String;

    move-result-object v0

    .line 0
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3000
    new-instance v1, Lkab$a;

    invoke-direct {v1}, Lkab$a;-><init>()V

    invoke-virtual {v1, v0}, Lkab$a;->a([B)Liwy;

    move-result-object v0

    check-cast v0, Lkab$a;

    check-cast v0, Lkab$a;

    .line 0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lkbe;->b:Lkbd;

    invoke-static {v1, v0}, Lkbd;->a(Lkbd;Lkab$a;)Lkab$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkbe;->a:Z

    iget-object v0, p0, Lkbe;->b:Lkbd;

    invoke-static {v0}, Lkbd;->a(Lkbd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fetch config failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkbe;->b:Lkbd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkbd;->a(Lkbd;Ljvg$b;)Ljvg$b;

    iget-boolean v0, p0, Lkbe;->a:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkbe;->b:Lkbd;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkbe;->b:Lkbd;

    invoke-static {v0}, Lkbd;->b(Lkbd;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lkbe;->b:Lkbd;

    invoke-static {v2}, Lkbd;->b(Lkbd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lkbd$a;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkbd$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lkbe;->b:Lkbd;

    invoke-static {v2}, Lkbd;->c(Lkbd;)Lkab$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

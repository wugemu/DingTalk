.class public final Lkdc;
.super Lkdn;


# instance fields
.field private A:Lkcz;

.field private B:Lkda;

.field private C:[B

.field private z:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lkdf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkdn;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkdf;)V

    return-void
.end method

.method static synthetic a(Lkdc;)Lkcz;
    .locals 1

    iget-object v0, p0, Lkdc;->A:Lkcz;

    return-object v0
.end method

.method private c(Z)Lkcy;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x0

    new-instance v0, Lkcy;

    invoke-direct {v0}, Lkcy;-><init>()V

    const-string/jumbo v1, "PING"

    invoke-virtual {v0, v1, v3}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lkcy;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lkac$j;

    invoke-direct {v1}, Lkac$j;-><init>()V

    invoke-virtual {p0}, Lkdc;->d()Lkdf;

    move-result-object v2

    invoke-virtual {v2}, Lkdf;->a()[B

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Lkac$b;->b([B)Lkac$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkac$j;->a(Lkac$b;)Lkac$j;
    :try_end_0
    .catch Lcom/google/protobuf/micro/d; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Lkeq;->c()[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Liww;->a([B)Liww;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkac$j;->a(Liww;)Lkac$j;

    :cond_1
    invoke-virtual {v1}, Lkac$j;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lkcy;->a([BLjava/lang/String;)V

    return-object v0

    :cond_2
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lkcy;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected final declared-synchronized a(ILjava/lang/Exception;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkdc;->A:Lkcz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkdc;->A:Lkcz;

    .line 4000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lkcz;->c:Z

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lkdc;->A:Lkcz;

    :cond_0
    iget-object v0, p0, Lkdc;->B:Lkda;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lkdc;->B:Lkda;

    .line 5000
    new-instance v1, Lkcy;

    invoke-direct {v1}, Lkcy;-><init>()V

    const-string/jumbo v2, "CLOSE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkda;->a(Lkcy;)I

    iget-object v0, v0, Lkda;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lkdc;->B:Lkda;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lkdc;->C:[B

    invoke-super {p0, p1, p2}, Lkdn;->a(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/xiaomi/push/service/aq$b;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkdc;->o()Ljava/lang/String;

    move-result-object v2

    .line 1000
    new-instance v3, Lkac$c;

    invoke-direct {v3}, Lkac$c;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lkac$c;->a(Ljava/lang/String;)Lkac$c;

    :cond_0
    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lkac$c;->d(Ljava/lang/String;)Lkac$c;

    :cond_1
    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lkac$c;->e(Ljava/lang/String;)Lkac$c;

    :cond_2
    iget-boolean v1, p1, Lcom/xiaomi/push/service/aq$b;->e:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v3, v1}, Lkac$c;->b(Ljava/lang/String;)Lkac$c;

    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lkac$c;->c(Ljava/lang/String;)Lkac$c;

    :goto_1
    new-instance v1, Lkcy;

    invoke-direct {v1}, Lkcy;-><init>()V

    iget-object v4, p1, Lcom/xiaomi/push/service/aq$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lkcy;->b(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lkcy;->a(I)V

    iget-object v4, p1, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    .line 2000
    iput-object v4, v1, Lkcy;->d:Ljava/lang/String;

    .line 1000
    const-string/jumbo v4, "BIND"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lkcy;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkcy;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Slim]: bind id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkcy;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljuw;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "challenge"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "token"

    iget-object v5, p1, Lcom/xiaomi/push/service/aq$b;->c:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "chid"

    iget-object v5, p1, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "from"

    iget-object v5, p1, Lcom/xiaomi/push/service/aq$b;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "id"

    invoke-virtual {v1}, Lkcy;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "to"

    const-string/jumbo v5, "xiaomi.com"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p1, Lcom/xiaomi/push/service/aq$b;->e:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "kick"

    const-string/jumbo v5, "1"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v2, p1, Lcom/xiaomi/push/service/aq$b;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "client_attrs"

    iget-object v5, p1, Lcom/xiaomi/push/service/aq$b;->f:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v2, p1, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "cloud_attrs"

    iget-object v5, p1, Lcom/xiaomi/push/service/aq$b;->g:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v2, p1, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    const-string/jumbo v5, "XIAOMI-PASS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    const-string/jumbo v5, "XMPUSH-PASS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v0, p1, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, p1, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-static {v0, v2, v4, v5}, Ljvr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Lkac$c;->f(Ljava/lang/String;)Lkac$c;

    invoke-virtual {v3}, Lkac$c;->c()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkcy;->a([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lkde;->b(Lkcy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    monitor-exit p0

    return-void

    .line 1000
    :cond_4
    :try_start_1
    const-string/jumbo v1, "0"

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "XIAOMI-SASL"

    invoke-virtual {v3, v1}, Lkac$c;->c(Ljava/lang/String;)Lkac$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1000
    :cond_6
    :try_start_2
    const-string/jumbo v2, "kick"

    const-string/jumbo v5, "0"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string/jumbo v2, "client_attrs"

    const-string/jumbo v5, ""

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    const-string/jumbo v2, "cloud_attrs"

    const-string/jumbo v5, ""

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v2, p1, Lcom/xiaomi/push/service/aq$b;->d:Ljava/lang/String;

    const-string/jumbo v4, "XIAOMI-SASL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    monitor-enter p0

    .line 3000
    :try_start_0
    new-instance v0, Lkcy;

    invoke-direct {v0}, Lkcy;-><init>()V

    invoke-virtual {v0, p2}, Lkcy;->b(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkcy;->a(I)V

    const-string/jumbo v1, "UBND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkde;->b(Lkcy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lkcy;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lkcy;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Slim] RCV blob chid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkcy;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lkcy;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lkcy;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lkcy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lkcy;->c()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PING"

    invoke-virtual {p1}, Lkcy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Slim] RCV ping id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkcy;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkdc;->r()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lkdc;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkde$a;

    invoke-virtual {v0, p1}, Lkde$a;->a(Lkcy;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "CLOSE"

    invoke-virtual {p1}, Lkcy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lkdc;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lkdu;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkcy;->a(Lkdu;Ljava/lang/String;)Lkcy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkdc;->b(Lkcy;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkdc;->B:Lkda;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkdc;->c(Z)Lkcy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Slim] SND ping id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkcy;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkdc;->b(Lkcy;)V

    invoke-virtual {p0}, Lkdc;->q()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string/jumbo v1, "The BlobWriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([Lkcy;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lkdc;->b(Lkcy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final declared-synchronized a()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkdc;->C:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lkdc;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkbd;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkdc;->l:Ljava/lang/String;

    iget-object v3, p0, Lkdc;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkdc;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lkaz;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lkdc;->C:[B

    :cond_0
    iget-object v0, p0, Lkdc;->C:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lkcy;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lkdc;->B:Lkda;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkdc;->B:Lkda;

    invoke-virtual {v0, p1}, Lkda;->a(Lkcy;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkdc;->r:J

    .line 8000
    iget-object v1, p1, Lkcy;->d:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkdc;->q:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lkeh;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    :cond_0
    iget-object v0, p0, Lkdc;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkde$a;

    invoke-virtual {v0, p1}, Lkde$a;->a(Lkcy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/smack/l;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string/jumbo v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method final b(Lkdu;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lkdc;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkde$a;

    .line 7000
    iget-object v0, v0, Lkde$a;->a:Lkdk;

    invoke-interface {v0, p1}, Lkdk;->a(Lkdu;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final declared-synchronized c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    monitor-enter p0

    .line 6000
    :try_start_0
    new-instance v0, Lkcz;

    iget-object v1, p0, Lkdc;->t:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkcz;-><init>(Ljava/io/InputStream;Lkdc;)V

    iput-object v0, p0, Lkdc;->A:Lkcz;

    new-instance v0, Lkda;

    iget-object v1, p0, Lkdc;->t:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkda;-><init>(Ljava/io/OutputStream;Lkdc;)V

    iput-object v0, p0, Lkdc;->B:Lkda;

    new-instance v0, Lkdd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Blob Reader ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lkdc;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lkdd;-><init>(Lkdc;Ljava/lang/String;)V

    iput-object v0, p0, Lkdc;->z:Ljava/lang/Thread;

    iget-object v0, p0, Lkdc;->z:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :try_start_1
    iget-object v0, p0, Lkdc;->B:Lkda;

    invoke-virtual {v0}, Lkda;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 6000
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/smack/l;

    const-string/jumbo v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

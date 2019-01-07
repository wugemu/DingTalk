.class public final Lkai;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;
    .locals 2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ai;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    const-string/jumbo v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {}, Lkdu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->a(Z)Lcom/xiaomi/xmpush/thrift/ai;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    invoke-static {p0, p1, v0, v1}, Lkai;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/af;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/af;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/af;"
        }
    .end annotation

    invoke-static {p2}, Lkev;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    new-instance v2, Lcom/xiaomi/xmpush/thrift/x;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/x;-><init>()V

    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/xmpush/thrift/x;->a:J

    const-string/jumbo v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->a(Lcom/xiaomi/xmpush/thrift/x;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/af;->a(Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/af;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->c(Z)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/af;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->a(Z)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/af;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    return-object v1
.end method

.method private static a(Lcom/xiaomi/push/service/XMPushService;[B)Lkcy;
    .locals 2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    invoke-static {p0}, Lkcq;->a(Landroid/content/Context;)Lkcp;

    move-result-object v1

    invoke-static {v1, v0}, Lkai;->a(Lkcp;Lcom/xiaomi/xmpush/thrift/af;)Lkcy;
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lkcp;Lcom/xiaomi/xmpush/thrift/af;)Lkcy;
    .locals 5

    .prologue
    .line 0
    :try_start_0
    new-instance v1, Lkcy;

    invoke-direct {v1}, Lkcy;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lkcy;->a(I)V

    iget-object v0, p0, Lkcp;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lkcy;->b(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/u;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/u;->k:Ljava/util/Map;

    const-string/jumbo v2, "ext_traffic_source_pkg"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2000
    :goto_0
    iput-object v0, v1, Lkcy;->d:Ljava/lang/String;

    .line 0
    const-string/jumbo v0, "SECMSG"

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v0, v2}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lkcp;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/af;->g:Lcom/xiaomi/xmpush/thrift/x;

    const/4 v3, 0x0

    const-string/jumbo v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/x;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/af;->g:Lcom/xiaomi/xmpush/thrift/x;

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/xmpush/thrift/x;->d:Ljava/lang/String;

    invoke-static {p1}, Lkev;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    iget-object v2, p0, Lkcp;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lkcy;->a([BLjava/lang/String;)V

    const/4 v0, 0x1

    .line 3000
    iput-short v0, v1, Lkcy;->b:S

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "try send mi push message. packagename:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/af;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/af;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 1000
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/af;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/aq$b;->a(Landroid/os/Messenger;)V

    new-instance v0, Lkaj;

    invoke-direct {v0, p0}, Lkaj;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/aq$b;->a(Lcom/xiaomi/push/service/aq$b$a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/af;)V
    .locals 2

    .prologue
    .line 0
    .line 5000
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    .line 0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkde;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lkcq;->a(Landroid/content/Context;)Lkcp;

    move-result-object v1

    invoke-static {v1, p1}, Lkai;->a(Lkcp;Lcom/xiaomi/xmpush/thrift/af;)Lkcy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lkde;->b(Lkcy;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string/jumbo v1, "Don\'t support XMPP connection."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string/jumbo v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 0
    .line 4000
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    .line 0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkde;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p2}, Lkai;->a(Lcom/xiaomi/push/service/XMPushService;[B)Lkcy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lkde;->b(Lkcy;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string/jumbo v1, "Don\'t support XMPP connection."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x42c1d83

    const-string/jumbo v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lkcu;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string/jumbo v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final Lkev;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;)S
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/af;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/a;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/android/a$a;->a()I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 5000
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 0
    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_1
    add-int/2addr v2, v0

    .line 6000
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_2
    add-int/2addr v0, v2

    invoke-static {p0, p1}, Lkbl;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x10

    :cond_1
    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_2
    move v0, v1

    .line 5000
    goto :goto_0

    :cond_3
    move v0, v1

    .line 0
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static a(Lorg/apache/thrift/a;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;[B)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 0
    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/thrift/f;

    const-string/jumbo v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lktf;

    new-instance v1, Lorg/apache/thrift/protocol/k$a;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/k$a;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lktf;-><init>(Lorg/apache/thrift/protocol/g;)V

    .line 2000
    :try_start_0
    iget-object v1, v0, Lktf;->b:Lktq;

    .line 3000
    array-length v2, p1

    .line 4000
    iput-object p1, v1, Lktq;->a:[B

    const/4 v3, 0x0

    iput v3, v1, Lktq;->b:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v1, Lktq;->c:I

    .line 2000
    iget-object v0, v0, Lktf;->a:Lktk;

    invoke-interface {p0, v0}, Lorg/apache/thrift/a;->a(Lktk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static a(Lorg/apache/thrift/a;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;)[B"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lktg;

    new-instance v2, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v2}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {v1, v2}, Lktg;-><init>(Lorg/apache/thrift/protocol/g;)V

    .line 1000
    iget-object v2, v1, Lktg;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v2, v1, Lktg;->b:Lktk;

    invoke-interface {p0, v2}, Lorg/apache/thrift/a;->b(Lktk;)V

    iget-object v1, v1, Lktg;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v1

    const-string/jumbo v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Ljuw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

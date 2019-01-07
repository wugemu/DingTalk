.class final Lkdd;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lkdc;


# direct methods
.method constructor <init>(Lkdc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkdd;->a:Lkdc;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Lkdd;->a:Lkdc;

    invoke-static {v0}, Lkdc;->a(Lkdc;)Lkcz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2000
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v2, Lkcz;->c:Z

    invoke-virtual {v2}, Lkcz;->a()Lkcy;

    move-result-object v0

    const-string/jumbo v3, "CONN"

    invoke-virtual {v0}, Lkcy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3000
    iget-object v0, v0, Lkcy;->c:[B

    .line 4000
    new-instance v3, Lkac$f;

    invoke-direct {v3}, Lkac$f;-><init>()V

    invoke-virtual {v3, v0}, Lkac$f;->a([B)Liwy;

    move-result-object v0

    check-cast v0, Lkac$f;

    check-cast v0, Lkac$f;

    .line 5000
    iget-boolean v3, v0, Lkac$f;->a:Z

    .line 2000
    if-eqz v3, :cond_0

    iget-object v1, v2, Lkcz;->b:Lkdc;

    .line 6000
    iget-object v3, v0, Lkac$f;->b:Ljava/lang/String;

    .line 2000
    invoke-virtual {v1, v3}, Lkdc;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 7000
    :cond_0
    iget-boolean v3, v0, Lkac$f;->d:Z

    .line 2000
    if-eqz v3, :cond_1

    .line 8000
    iget-object v3, v0, Lkac$f;->e:Lkac$b;

    .line 2000
    new-instance v4, Lkcy;

    invoke-direct {v4}, Lkcy;-><init>()V

    const-string/jumbo v5, "SYNC"

    const-string/jumbo v6, "CONF"

    invoke-virtual {v4, v5, v6}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lkac$b;->c()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lkcy;->a([BLjava/lang/String;)V

    iget-object v3, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v3, v4}, Lkdc;->a(Lkcy;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Slim] CONN: host = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9000
    iget-object v0, v0, Lkac$f;->c:Ljava/lang/String;

    .line 2000
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    if-nez v0, :cond_4

    const-string/jumbo v0, "[Slim] Invalid CONN"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid Connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1000
    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v1, v2, Lkcz;->c:Z

    if-nez v1, :cond_3

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 0
    :catch_1
    move-exception v0

    iget-object v1, p0, Lkdd;->a:Lkdc;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lkdc;->c(ILjava/lang/Exception;)V

    :cond_3
    return-void

    .line 2000
    :cond_4
    :try_start_3
    iget-object v0, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v0}, Lkdc;->a()[B

    move-result-object v0

    iput-object v0, v2, Lkcz;->d:[B

    :goto_0
    iget-boolean v0, v2, Lkcz;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lkcz;->a()Lkcy;

    move-result-object v1

    iget-object v0, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v0}, Lkdc;->l()V

    .line 10000
    iget-short v0, v1, Lkcy;->b:S

    .line 2000
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Slim] unknow blob type "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12000
    iget-short v1, v1, Lkcy;->b:S

    .line 2000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v0, v1}, Lkdc;->a(Lkcy;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SECMSG"

    invoke-virtual {v1}, Lkcy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lkcy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v1}, Lkcy;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lkcy;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v0

    iget-object v3, v2, Lkcz;->a:Lkdb;

    iget-object v0, v0, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lkcy;->c(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v4, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v3, v0, v4}, Lkdb;->a([BLkde;)Lkdu;

    move-result-object v0

    iget-object v3, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v3, v0}, Lkdc;->b(Lkdu;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Slim] Parse packet from Blob "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkcy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " failure:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v0, v1}, Lkdc;->a(Lkcy;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :pswitch_2
    :try_start_6
    iget-object v0, v2, Lkcz;->a:Lkdb;

    .line 11000
    iget-object v3, v1, Lkcy;->c:[B

    .line 2000
    iget-object v4, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v0, v3, v4}, Lkdb;->a([BLkde;)Lkdu;

    move-result-object v0

    iget-object v3, v2, Lkcz;->b:Lkdc;

    invoke-virtual {v3, v0}, Lkdc;->b(Lkdu;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Slim] Parse packet from Blob "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkcy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " failure:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class final Ljda$1;
.super Ljava/util/TimerTask;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljda;


# direct methods
.method constructor <init>(Ljda;)V
    .locals 1

    iput-object p1, p0, Ljda$1;->b:Ljda;

    const/4 v0, 0x2

    iput v0, p0, Ljda$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v0, 0x42fffff

    const/4 v9, 0x3

    const/4 v6, 0x2

    .line 0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iget-object v1, p0, Ljda$1;->b:Ljda;

    .line 1000
    iget-wide v4, v1, Ljda;->k:J

    .line 0
    sub-long/2addr v2, v4

    iget-object v1, p0, Ljda$1;->b:Ljda;

    .line 2000
    invoke-virtual {v1}, Ljda;->d()Z

    move-result v1

    .line 0
    if-eqz v1, :cond_0

    iget-object v1, p0, Ljda$1;->b:Ljda;

    .line 3000
    invoke-virtual {v1}, Ljda;->e()I

    move-result v1

    .line 0
    if-nez v1, :cond_0

    iget-object v1, p0, Ljda$1;->b:Ljda;

    .line 4000
    invoke-virtual {v1}, Ljda;->c()V

    .line 0
    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 8000
    :cond_1
    :goto_0
    return-void

    .line 0
    :cond_2
    iget-object v1, p0, Ljda$1;->b:Ljda;

    .line 5000
    iget-object v1, v1, Ljda;->i:Ljdc;

    .line 0
    if-eqz v1, :cond_8

    iget-object v1, p0, Ljda$1;->b:Ljda;

    .line 6000
    iget-object v1, v1, Ljda;->i:Ljdc;

    .line 0
    iget-object v2, p0, Ljda$1;->b:Ljda;

    .line 7000
    iget-object v2, v2, Ljda;->j:Landroid/net/ConnectivityManager;

    .line 0
    invoke-virtual {v1, v2}, Ljdc;->a(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Ljda$1;->b:Ljda;

    .line 8000
    invoke-virtual {v2}, Ljda;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljdn;->v()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v2}, Ljda;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8000
    :cond_4
    packed-switch v6, :pswitch_data_0

    move v1, v0

    :goto_1
    :try_start_1
    iget-object v0, v2, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v3, "callBackWrapData"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "e"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "d"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "u"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    iget-object v0, v2, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v3, "getReportDate"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    :try_start_3
    check-cast v0, [B

    check-cast v0, [B

    iget-object v3, v2, Ljda;->h:Ljdj;

    iget-object v4, v2, Ljda;->l:Landroid/content/Context;

    const-string/jumbo v5, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-virtual {v3, v0, v4, v5}, Ljdj;->a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljda;->d()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-eqz v3, :cond_5

    :try_start_4
    iget-object v3, v2, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v4, "setUploadResult"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Ljda;->f:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljda;->f()V

    invoke-virtual {v2}, Ljda;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljda;->e()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Ljda;->c()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "up"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :pswitch_0
    move v1, v0

    goto/16 :goto_1

    :pswitch_1
    const v0, 0x282fffff

    move v1, v0

    goto/16 :goto_1

    :pswitch_2
    :try_start_7
    iget-object v0, v2, Ljda;->i:Ljdc;

    if-eqz v0, :cond_6

    iget-object v0, v2, Ljda;->i:Ljdc;

    iget-object v1, v2, Ljda;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Ljdc;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x282fffff

    move v1, v0

    goto/16 :goto_1

    :cond_6
    const v0, 0x7c2fffff

    move v1, v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const/4 v0, 0x3

    iput v0, v2, Ljda;->f:I

    goto :goto_4

    :cond_7
    iget v0, v2, Ljda;->f:I

    if-lt v0, v9, :cond_1

    invoke-virtual {v2}, Ljda;->c()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 0
    :cond_8
    :try_start_8
    iget-object v0, p0, Ljda$1;->b:Ljda;

    .line 9000
    invoke-virtual {v0}, Ljda;->c()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 8000
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

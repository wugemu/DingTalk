.class final Liix$a;
.super Liiy;
.source "BQCScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liiy",
        "<",
        "Lcom/alipay/mobile/bqcscanservice/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/bqcscanservice/b;

.field final synthetic b:Liix;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Liix;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Liix$a;->b:Liix;

    invoke-direct {p0}, Liiy;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Liix$a;->g:Z

    .line 345
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private b()Lcom/alipay/mobile/bqcscanservice/c;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 364
    iget-object v0, p0, Liix$a;->b:Liix;

    invoke-static {v0}, Liix;->c(Liix;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    if-eqz v0, :cond_2

    .line 366
    :try_start_0
    const-string/jumbo v0, "BQCScanController"

    const-string/jumbo v1, "scan engine process"

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Liix$a;->b:Liix;

    invoke-static {v0}, Liix;->d(Liix;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 370
    .local v6, "beginTime":J
    iget-object v0, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    iget-object v1, p0, Liix$a;->c:[B

    iget-object v2, p0, Liix$a;->d:Landroid/hardware/Camera;

    iget-object v3, p0, Liix$a;->b:Liix;

    invoke-static {v3}, Liix;->e(Liix;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Liix$a;->e:Landroid/hardware/Camera$Size;

    iget v5, p0, Liix$a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/bqcscanservice/b;->process([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)Lcom/alipay/mobile/bqcscanservice/c;

    move-result-object v10

    .line 371
    .local v10, "result":Lcom/alipay/mobile/bqcscanservice/c;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v6

    .line 372
    .local v8, "duration":J
    iget-object v0, p0, Liix$a;->b:Liix;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v10, :cond_0

    .line 1227
    :cond_0
    :try_start_1
    iget-object v1, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v1, :cond_1

    .line 1228
    iget-object v0, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/a;->f()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    .end local v6    # "beginTime":J
    .end local v8    # "duration":J
    .end local v10    # "result":Lcom/alipay/mobile/bqcscanservice/c;
    :cond_1
    :goto_0
    return-object v10

    .line 1230
    .restart local v6    # "beginTime":J
    .restart local v8    # "duration":J
    .restart local v10    # "result":Lcom/alipay/mobile/bqcscanservice/c;
    :catch_0
    move-exception v0

    .line 1231
    :try_start_2
    const-string/jumbo v1, "BQCScanController"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 378
    .end local v6    # "beginTime":J
    .end local v8    # "duration":J
    .end local v10    # "result":Lcom/alipay/mobile/bqcscanservice/c;
    :catch_1
    move-exception v0

    const-string/jumbo v0, "BQCScanController"

    const-string/jumbo v1, "scan task doInBackground exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 374
    :cond_3
    :try_start_3
    iget-object v0, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    iget-object v1, p0, Liix$a;->c:[B

    iget-object v2, p0, Liix$a;->d:Landroid/hardware/Camera;

    iget-object v3, p0, Liix$a;->b:Liix;

    invoke-static {v3}, Liix;->e(Liix;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Liix$a;->e:Landroid/hardware/Camera$Size;

    iget v5, p0, Liix$a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/bqcscanservice/b;->process([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)Lcom/alipay/mobile/bqcscanservice/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .restart local v10    # "result":Lcom/alipay/mobile/bqcscanservice/c;
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 359
    iget-object v0, p0, Liix$a;->b:Liix;

    iget-object v1, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-static {v0, v1}, Liix;->a(Liix;Lcom/alipay/mobile/bqcscanservice/b;)V

    .line 361
    return-void
.end method

.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 414
    invoke-direct {p0}, Liix$a;->b()Lcom/alipay/mobile/bqcscanservice/c;

    move-result-object v0

    .line 415
    .local v0, "scanResult":Lcom/alipay/mobile/bqcscanservice/c;
    const-string/jumbo v1, "BQCScanController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ScanResult == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v1, p0, Liix$a;->b:Liix;

    invoke-static {v1}, Liix;->c(Liix;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    if-eqz v1, :cond_1

    .line 1388
    :try_start_0
    iget-object v1, p0, Liix$a;->b:Liix;

    invoke-static {v1}, Liix;->f(Liix;)Lijb;

    move-result-object v1

    iget-object v2, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-virtual {v2}, Lcom/alipay/mobile/bqcscanservice/b;->getCodeSize()F

    move-result v2

    .line 2050
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 2053
    iput v2, v1, Lijb;->e:F

    .line 1389
    :cond_0
    iget-object v1, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/bqcscanservice/b;->onProcessFinish(Lcom/alipay/mobile/bqcscanservice/c;)Z

    move-result v1

    .line 1390
    if-eqz v1, :cond_1

    .line 1392
    iget-object v1, p0, Liix$a;->b:Liix;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Liix;->a(Liix;Z)Z

    .line 1393
    iget-object v1, p0, Liix$a;->b:Liix;

    invoke-static {v1}, Liix;->f(Liix;)Lijb;

    move-result-object v1

    .line 3034
    iget-boolean v2, v1, Lijb;->d:Z

    if-eqz v2, :cond_1

    iget-wide v2, v1, Lijb;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 3035
    const/4 v2, 0x1

    iput-boolean v2, v1, Lijb;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :cond_1
    :goto_0
    iget-boolean v1, p0, Liix$a;->g:Z

    if-eqz v1, :cond_2

    .line 1400
    iget-object v1, p0, Liix$a;->b:Liix;

    iget-object v2, p0, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-static {v1, v2}, Liix;->a(Liix;Lcom/alipay/mobile/bqcscanservice/b;)V

    .line 1402
    :cond_2
    iput-boolean v7, p0, Liix$a;->h:Z

    .line 1403
    iput-object v6, p0, Liix$a;->c:[B

    .line 1404
    iput-object v6, p0, Liix$a;->d:Landroid/hardware/Camera;

    .line 1405
    iput-object v6, p0, Liix$a;->e:Landroid/hardware/Camera$Size;

    .line 1406
    iget-object v1, p0, Liix$a;->b:Liix;

    invoke-static {v1}, Liix;->g(Liix;)Liix$b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1407
    iget-object v1, p0, Liix$a;->b:Liix;

    invoke-static {v1}, Liix;->g(Liix;)Liix$b;

    move-result-object v1

    .line 3506
    iget v2, v1, Liix$b;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Liix$b;->a:I

    .line 417
    :cond_3
    return-void

    .line 1396
    :catch_0
    move-exception v1

    const-string/jumbo v1, "BQCScanController"

    const-string/jumbo v2, "scan task onPostExecute exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

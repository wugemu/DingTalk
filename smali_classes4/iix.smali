.class public final Liix;
.super Ljava/lang/Object;
.source "BQCScanController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liix$b;,
        Liix$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/alipay/mobile/bqcscanservice/a;

.field c:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/bqcscanservice/b;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/bqcscanservice/b$a;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/alipay/mobile/bqcscanservice/b;

.field f:Liix$a;

.field g:Landroid/graphics/Rect;

.field volatile h:[B

.field volatile i:[B

.field j:Landroid/hardware/Camera;

.field k:Z

.field volatile l:Lijb;

.field volatile m:Z

.field private n:Ljava/lang/String;

.field private volatile o:Z

.field private p:I

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/hardware/Camera$Size;

.field private s:I

.field private t:Lcom/alipay/mobile/bqcscanservice/d;

.field private u:Z

.field private v:Liix$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/alipay/mobile/bqcscanservice/d;Z)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "cameraHandler"    # Lcom/alipay/mobile/bqcscanservice/d;
    .param p4, "firstSetup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/bqcscanservice/d;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    .line 32
    iput-object v2, p0, Liix;->n:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Liix;->g:Landroid/graphics/Rect;

    .line 34
    iput-boolean v1, p0, Liix;->o:Z

    .line 35
    iput-object v2, p0, Liix;->h:[B

    .line 36
    iput-object v2, p0, Liix;->i:[B

    .line 37
    iput v0, p0, Liix;->p:I

    .line 43
    const/4 v2, -0x1

    iput v2, p0, Liix;->s:I

    .line 56
    iput-object p1, p0, Liix;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Liix;->q:Ljava/util/Map;

    .line 58
    iput-object p3, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    .line 59
    new-instance v2, Lijb;

    invoke-direct {v2}, Lijb;-><init>()V

    iput-object v2, p0, Liix;->l:Lijb;

    .line 60
    iput-boolean p4, p0, Liix;->u:Z

    .line 61
    iget-boolean v2, p0, Liix;->u:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Liix;->k:Z

    .line 62
    new-instance v0, Liix$b;

    invoke-direct {v0, p0}, Liix$b;-><init>(Liix;)V

    iput-object v0, p0, Liix;->v:Liix$b;

    .line 63
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method static a(Lcom/alipay/mobile/bqcscanservice/b;)V
    .locals 2
    .param p0, "engine"    # Lcom/alipay/mobile/bqcscanservice/b;

    .prologue
    .line 465
    if-eqz p0, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/bqcscanservice/b;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    const-string/jumbo v0, "BQCScanController"

    const-string/jumbo v1, "engine destroy exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Liix;Lcom/alipay/mobile/bqcscanservice/b;)V
    .locals 0
    .param p0, "x0"    # Liix;
    .param p1, "x1"    # Lcom/alipay/mobile/bqcscanservice/b;

    .prologue
    .line 22
    invoke-static {p1}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/b;)V

    return-void
.end method

.method static synthetic a(Liix;Z)Z
    .locals 1
    .param p0, "x0"    # Liix;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Liix;->o:Z

    return v0
.end method

.method private a()[B
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Liix;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Liix;->i:[B

    if-eqz v0, :cond_1

    .line 164
    iget v0, p0, Liix;->p:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Liix;->h:[B

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Liix;->i:[B

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Liix;->h:[B

    goto :goto_0
.end method

.method static synthetic a(Liix;)[B
    .locals 1
    .param p0, "x0"    # Liix;

    .prologue
    .line 22
    invoke-direct {p0}, Liix;->a()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Liix;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Liix;

    .prologue
    .line 22
    iget-object v0, p0, Liix;->j:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic c(Liix;)Z
    .locals 1
    .param p0, "x0"    # Liix;

    .prologue
    .line 22
    iget-boolean v0, p0, Liix;->o:Z

    return v0
.end method

.method static synthetic d(Liix;)Z
    .locals 1
    .param p0, "x0"    # Liix;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Liix;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Liix;

    .prologue
    .line 22
    iget-object v0, p0, Liix;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic f(Liix;)Lijb;
    .locals 1
    .param p0, "x0"    # Liix;

    .prologue
    .line 22
    iget-object v0, p0, Liix;->l:Lijb;

    return-object v0
.end method

.method static synthetic g(Liix;)Liix$b;
    .locals 1
    .param p0, "x0"    # Liix;

    .prologue
    .line 22
    iget-object v0, p0, Liix;->v:Liix$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V
    .locals 3
    .param p1, "error"    # Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "BQCScanController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The bqcCallBack is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/bqcscanservice/a;->a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V

    .line 182
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 6
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 421
    iput-boolean p1, p0, Liix;->o:Z

    .line 422
    iget-boolean v0, p0, Liix;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/bqcscanservice/b;->start()V

    .line 425
    :cond_0
    if-nez p1, :cond_3

    .line 426
    iget-object v0, p0, Liix;->l:Lijb;

    .line 3040
    iget-boolean v1, v0, Lijb;->b:Z

    if-eqz v1, :cond_2

    .line 3041
    const/4 v1, -0x1

    iput v1, v0, Lijb;->a:I

    .line 3042
    const/4 v1, 0x0

    iput v1, v0, Lijb;->e:F

    .line 3043
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lijb;->f:J

    .line 3318
    :goto_0
    iget-object v0, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    if-eqz v0, :cond_1

    .line 3319
    iget-object v0, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    new-instance v1, Liix$1;

    invoke-direct {v1, p0}, Liix$1;-><init>(Liix;)V

    .line 4166
    iget-object v2, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/bqcscanservice/d$7;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/bqcscanservice/d$7;-><init>(Lcom/alipay/mobile/bqcscanservice/d;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    :cond_1
    const-string/jumbo v0, "BQCScanController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setScanEnable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void

    .line 3045
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lijb;->f:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lijb;->c:J

    goto :goto_0

    .line 428
    :cond_3
    iget-object v0, p0, Liix;->l:Lijb;

    invoke-virtual {v0}, Lijb;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)Z
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subEngineType"    # Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 246
    const-string/jumbo v5, "BQCScanController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setScanType(): scanType: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Liix;->n:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "setScanType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", subEngineType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    if-eqz p1, :cond_0

    iget-object v5, p0, Liix;->c:Lfk;

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 313
    :goto_0
    return v5

    .line 251
    :cond_1
    iget-object v5, p0, Liix;->n:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 252
    goto :goto_0

    .line 255
    :cond_2
    :try_start_0
    iget-object v5, p0, Liix;->c:Lfk;

    invoke-virtual {v5, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 256
    .local v1, "engineClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alipay/mobile/bqcscanservice/b;>;"
    if-nez v1, :cond_3

    move v5, v7

    .line 257
    goto :goto_0

    .line 261
    :cond_3
    const/4 v4, 0x0

    .line 262
    .local v4, "needRestoreScan":Z
    iget-boolean v5, p0, Liix;->o:Z

    if-eqz v5, :cond_4

    .line 263
    const/4 v5, 0x0

    iput-boolean v5, p0, Liix;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    const/4 v4, 0x1

    .line 267
    :cond_4
    const/4 v2, 0x0

    .line 269
    .local v2, "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    :try_start_1
    const-string/jumbo v5, "BQCScanController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setScanType(): scanTask:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Liix;->f:Liix$a;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v5, p0, Liix;->f:Liix$a;

    if-eqz v5, :cond_6

    .line 272
    iget-object v5, p0, Liix;->f:Liix$a;

    invoke-virtual {v5}, Liix$a;->a()V

    .line 276
    :goto_1
    const-string/jumbo v5, "BQCScanController"

    const-string/jumbo v8, "setScanType(): Begin to init engine class"

    invoke-static {v5, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/bqcscanservice/b;

    iput-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    .line 278
    iget-object v5, p0, Liix;->l:Lijb;

    iget-object v8, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-virtual {v8}, Lcom/alipay/mobile/bqcscanservice/b;->isQrCodeEngine()Z

    move-result v8

    iput-boolean v8, v5, Lijb;->d:Z

    .line 279
    const-string/jumbo v5, "BQCScanController"

    const-string/jumbo v8, "setScanType(): End to init engine class"

    invoke-static {v5, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    iget-object v8, p0, Liix;->a:Landroid/content/Context;

    iget-object v9, p0, Liix;->q:Ljava/util/Map;

    invoke-virtual {v5, v8, v9}, Lcom/alipay/mobile/bqcscanservice/b;->init(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 281
    const/4 v5, 0x0

    iput-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    .line 282
    new-instance v3, Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    sget-object v5, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->initEngineError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v8, "init engine fail"

    invoke-direct {v3, v5, v8}, Lcom/alipay/mobile/bqcscanservice/BQCScanError;-><init>(Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;Ljava/lang/String;)V

    .end local v2    # "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    .local v3, "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    move-object v2, v3

    .line 288
    .end local v3    # "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    .restart local v2    # "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    :cond_5
    :goto_2
    const-string/jumbo v5, "BQCScanController"

    const-string/jumbo v8, "setScanType(): end to init the engine"

    invoke-static {v5, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    :goto_3
    if-eqz v2, :cond_8

    .line 294
    :try_start_2
    invoke-virtual {p0, v2}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v7

    .line 295
    goto/16 :goto_0

    .line 274
    :cond_6
    :try_start_3
    iget-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-static {v5}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_4
    iput-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    .line 291
    new-instance v2, Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    .end local v2    # "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    sget-object v5, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->initEngineError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "init engine fail:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Lcom/alipay/mobile/bqcscanservice/BQCScanError;-><init>(Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v2    # "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    goto :goto_3

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_5
    iget-object v5, p0, Liix;->d:Lfk;

    if-eqz v5, :cond_5

    .line 285
    iget-object v8, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    iget-object v5, p0, Liix;->d:Lfk;

    invoke-virtual {v5, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/bqcscanservice/b$a;

    invoke-virtual {v8, v5}, Lcom/alipay/mobile/bqcscanservice/b;->setResultCallback(Lcom/alipay/mobile/bqcscanservice/b$a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 297
    :cond_8
    :try_start_6
    iput-object p1, p0, Liix;->n:Ljava/lang/String;

    .line 298
    iget-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    if-eqz v5, :cond_9

    .line 299
    iget-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-virtual {v5, p2}, Lcom/alipay/mobile/bqcscanservice/b;->setSubScanType(Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)V

    .line 300
    iget-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    iget-boolean v8, p0, Liix;->u:Z

    invoke-virtual {v5, v8}, Lcom/alipay/mobile/bqcscanservice/b;->setWhetherFirstSetup(Z)V

    .line 303
    :cond_9
    if-eqz v4, :cond_a

    .line 304
    const/4 v5, 0x1

    iput-boolean v5, p0, Liix;->o:Z

    .line 306
    :cond_a
    iget-boolean v5, p0, Liix;->o:Z

    if-eqz v5, :cond_b

    .line 307
    iget-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-virtual {v5}, Lcom/alipay/mobile/bqcscanservice/b;->start()V

    .line 309
    :cond_b
    iget-object v5, p0, Liix;->l:Lijb;

    invoke-virtual {v5}, Lijb;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v5, v6

    .line 310
    goto/16 :goto_0

    .line 311
    .end local v1    # "engineClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alipay/mobile/bqcscanservice/b;>;"
    .end local v2    # "error":Lcom/alipay/mobile/bqcscanservice/BQCScanError;
    .end local v4    # "needRestoreScan":Z
    :catch_1
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BQCScanController"

    const-string/jumbo v6, "Set ScanType failed"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v7

    .line 313
    goto/16 :goto_0
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, "beginTime":J
    iget-boolean v6, p0, Liix;->m:Z

    if-nez v6, :cond_1

    .line 103
    iput-object v4, p0, Liix;->j:Landroid/hardware/Camera;

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iput-object p2, p0, Liix;->j:Landroid/hardware/Camera;

    .line 107
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 110
    iget-object v6, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    if-eqz v6, :cond_0

    .line 113
    iget-boolean v6, p0, Liix;->o:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Liix;->n:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 114
    :cond_2
    iget-object v4, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    invoke-virtual {v4}, Lcom/alipay/mobile/bqcscanservice/d;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-direct {p0}, Liix;->a()[B

    move-result-object v2

    .line 116
    .local v2, "buffer":[B
    if-eqz v2, :cond_0

    .line 117
    iget-object v4, p0, Liix;->j:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 122
    .end local v2    # "buffer":[B
    :cond_3
    iget-object v6, p0, Liix;->l:Lijb;

    invoke-virtual {v6}, Lijb;->a()V

    .line 123
    iget-object v6, p0, Liix;->r:Landroid/hardware/Camera$Size;

    if-eqz v6, :cond_4

    iget v6, p0, Liix;->s:I

    if-gez v6, :cond_5

    .line 124
    :cond_4
    iget-object v6, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    invoke-virtual {v6}, Lcom/alipay/mobile/bqcscanservice/d;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 128
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iput-object v6, p0, Liix;->r:Landroid/hardware/Camera$Size;

    .line 129
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v6

    iput v6, p0, Liix;->s:I

    .line 1034
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_5
    sget-object v6, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v6, :cond_6

    .line 1035
    sget-object v6, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v6

    if-nez v6, :cond_6

    const/4 v5, 0x1

    .line 131
    :cond_6
    if-nez v5, :cond_7

    .line 132
    iget-object v5, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    invoke-virtual {v5}, Lcom/alipay/mobile/bqcscanservice/d;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 133
    invoke-direct {p0}, Liix;->a()[B

    move-result-object v2

    .line 134
    .restart local v2    # "buffer":[B
    if-eqz v2, :cond_0

    .line 135
    iget-object v4, p0, Liix;->j:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 140
    .end local v2    # "buffer":[B
    :cond_7
    iget-object v5, p0, Liix;->v:Liix$b;

    if-eqz v5, :cond_8

    .line 141
    iget-object v5, p0, Liix;->v:Liix$b;

    .line 1496
    iget v6, v5, Liix$b;->a:I

    if-nez v6, :cond_a

    .line 141
    :goto_1
    iput-object v4, p0, Liix;->f:Liix$a;

    .line 142
    iget-object v4, p0, Liix;->f:Liix$a;

    if-eqz v4, :cond_8

    .line 143
    iget-object v4, p0, Liix;->f:Liix$a;

    iget-object v5, p0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    .line 2348
    iput-object v5, v4, Liix$a;->a:Lcom/alipay/mobile/bqcscanservice/b;

    .line 144
    iget-object v4, p0, Liix;->f:Liix$a;

    iget-object v5, p0, Liix;->r:Landroid/hardware/Camera$Size;

    iget v6, p0, Liix;->s:I

    invoke-virtual {v4, p1, p2, v5, v6}, Liix$a;->a([BLandroid/hardware/Camera;Landroid/hardware/Camera$Size;I)V

    .line 145
    iget-object v4, p0, Liix;->f:Liix$a;

    .line 3026
    sget-object v5, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v5, :cond_b

    .line 3027
    sget-object v5, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 146
    :goto_2
    iget v4, p0, Liix;->p:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Liix;->p:I

    .line 149
    :cond_8
    iget-object v4, p0, Liix;->t:Lcom/alipay/mobile/bqcscanservice/d;

    invoke-virtual {v4}, Lcom/alipay/mobile/bqcscanservice/d;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 150
    invoke-direct {p0}, Liix;->a()[B

    move-result-object v2

    .line 151
    .restart local v2    # "buffer":[B
    if-eqz v2, :cond_9

    .line 152
    iget-object v4, p0, Liix;->j:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 155
    .end local v2    # "buffer":[B
    :cond_9
    const-string/jumbo v4, "BQCScanController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "=======> duration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1499
    :cond_a
    iget v4, v5, Liix$b;->a:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Liix$b;->a:I

    .line 1500
    iget v4, v5, Liix$b;->b:I

    .line 1501
    iget v6, v5, Liix$b;->b:I

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x3

    iput v6, v5, Liix$b;->b:I

    .line 1502
    iget-object v5, v5, Liix$b;->c:[Liix$a;

    aget-object v4, v5, v4

    goto :goto_1

    .line 3029
    :cond_b
    const-string/jumbo v4, "ScanExecutor"

    const-string/jumbo v5, "Executor is dead"

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

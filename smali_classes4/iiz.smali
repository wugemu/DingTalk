.class public final Liiz;
.super Ljava/lang/Object;
.source "MPaasScanServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/bqcscanservice/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liiz$a;
    }
.end annotation


# instance fields
.field protected b:Z

.field protected c:Lcom/alipay/mobile/bqcscanservice/d;

.field protected d:J

.field private e:Liig;

.field private f:Liix;

.field private g:Landroid/view/TextureView;

.field private h:Landroid/graphics/SurfaceTexture;

.field private i:Landroid/view/TextureView$SurfaceTextureListener;

.field private volatile j:J

.field private volatile k:J

.field private l:Landroid/hardware/Camera$Parameters;

.field private m:Landroid/graphics/Point;

.field private n:Landroid/graphics/Point;

.field private o:Landroid/graphics/Point;

.field private p:Lija;

.field private q:Liih;

.field private r:Landroid/graphics/Point;

.field private volatile s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Liiz;->b:Z

    .line 42
    iput-object v1, p0, Liiz;->e:Liig;

    .line 43
    iput-object v1, p0, Liiz;->f:Liix;

    .line 45
    iput-object v1, p0, Liiz;->g:Landroid/view/TextureView;

    .line 46
    iput-object v1, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    .line 48
    iput-wide v4, p0, Liiz;->j:J

    .line 49
    iput-wide v4, p0, Liiz;->k:J

    .line 63
    iput-boolean v2, p0, Liiz;->s:Z

    .line 68
    iput-boolean v0, p0, Liiz;->t:Z

    .line 73
    iput-boolean v0, p0, Liiz;->u:Z

    .line 78
    iput-boolean v0, p0, Liiz;->v:Z

    .line 83
    iput-boolean v0, p0, Liiz;->w:Z

    .line 84
    iput-boolean v0, p0, Liiz;->x:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Liiz;)J
    .locals 2
    .param p0, "x0"    # Liiz;

    .prologue
    .line 36
    iget-wide v0, p0, Liiz;->k:J

    return-wide v0
.end method

.method static synthetic a(Liiz;J)J
    .locals 1
    .param p0, "x0"    # Liiz;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Liiz;->j:J

    return-wide p1
.end method

.method static synthetic a(Liiz;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Liiz;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 36
    iput-object p1, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Liiz;Z)Z
    .locals 1
    .param p0, "x0"    # Liiz;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Liiz;->x:Z

    return v0
.end method

.method static synthetic b(Liiz;)Z
    .locals 1
    .param p0, "x0"    # Liiz;

    .prologue
    .line 36
    iget-boolean v0, p0, Liiz;->s:Z

    return v0
.end method

.method static synthetic c(Liiz;)J
    .locals 2
    .param p0, "x0"    # Liiz;

    .prologue
    .line 36
    iget-wide v0, p0, Liiz;->j:J

    return-wide v0
.end method

.method static synthetic d(Liiz;)Liix;
    .locals 1
    .param p0, "x0"    # Liiz;

    .prologue
    .line 36
    iget-object v0, p0, Liiz;->f:Liix;

    return-object v0
.end method

.method static synthetic e(Liiz;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Liiz;

    .prologue
    .line 36
    iget-object v0, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic f(Liiz;)Z
    .locals 1
    .param p0, "x0"    # Liiz;

    .prologue
    .line 36
    iget-boolean v0, p0, Liiz;->x:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v2, 0x14

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 274
    iget-object v3, p0, Liiz;->e:Liig;

    if-nez v3, :cond_1

    .line 275
    const-string/jumbo v3, "MPaasScanServiceImpl"

    const-string/jumbo v4, "startPreview(): cameraManager is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-boolean v3, p0, Liiz;->u:Z

    if-eqz v3, :cond_2

    .line 279
    const-string/jumbo v3, "MPaasScanServiceImpl"

    const-string/jumbo v4, "startPreview(): camera is previewing"

    invoke-static {v3, v4}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    iput-boolean v6, p0, Liiz;->u:Z

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "msg":Ljava/lang/String;
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Liiz;->j:J

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Liiz;->k:J

    .line 287
    :try_start_0
    iget-object v3, p0, Liiz;->e:Liig;

    .line 4116
    iget-object v6, v3, Liig;->c:Landroid/hardware/Camera;

    .line 4117
    if-nez v6, :cond_3

    .line 4118
    const/4 v6, -0x1

    invoke-static {v6}, Liii;->a(I)Landroid/hardware/Camera;

    move-result-object v6

    .line 4119
    const-string/jumbo v7, "CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "open camera result: camera="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    iput-object v6, v3, Liig;->c:Landroid/hardware/Camera;

    .line 288
    :cond_3
    iget-object v3, p0, Liiz;->f:Liix;

    if-eqz v3, :cond_4

    .line 289
    iget-object v3, p0, Liiz;->f:Liix;

    const/4 v6, 0x1

    .line 4474
    iput-boolean v6, v3, Liix;->m:Z

    .line 290
    iget-object v3, p0, Liiz;->f:Liix;

    .line 5200
    iget-object v6, v3, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v6, :cond_4

    .line 5201
    iget-object v3, v3, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v3}, Lcom/alipay/mobile/bqcscanservice/a;->b()V

    .line 292
    :cond_4
    iget-object v6, p0, Liiz;->e:Liig;

    .line 6125
    iget-object v7, v6, Liig;->c:Landroid/hardware/Camera;

    .line 6126
    const-string/jumbo v3, "CameraManager"

    const-string/jumbo v8, "Camera Opened, Set Preview Parameters"

    invoke-static {v3, v8}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6127
    iget-object v3, v6, Liig;->d:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_5

    iget-object v3, v6, Liig;->j:Landroid/graphics/Point;

    if-eqz v3, :cond_5

    iget-object v3, v6, Liig;->k:Landroid/graphics/Point;

    if-eqz v3, :cond_5

    iget-object v3, v6, Liig;->l:Landroid/graphics/Point;

    if-nez v3, :cond_a

    .line 6129
    :cond_5
    iget-object v8, v6, Liig;->b:Liif;

    .line 7075
    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 7076
    const-string/jumbo v3, "CameraConfiguration"

    const-string/jumbo v10, "The first time to get parameters"

    invoke-static {v3, v10}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7077
    iget-object v3, v8, Liif;->a:Landroid/content/Context;

    const-string/jumbo v10, "window"

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 7078
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 7079
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 7080
    invoke-virtual {v3, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 7081
    iput-object v10, v8, Liif;->b:Landroid/graphics/Point;

    .line 7082
    const-string/jumbo v3, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Screen resolution: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, Liif;->b:Landroid/graphics/Point;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7083
    iget-object v3, v8, Liif;->b:Landroid/graphics/Point;

    invoke-static {v9, v3}, Liij;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v8, Liif;->c:Landroid/graphics/Point;

    .line 7086
    iget v3, v8, Liif;->e:I

    invoke-static {v9, v3}, Liij;->a(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v8, Liif;->d:Landroid/graphics/Point;

    .line 7089
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7090
    const-string/jumbo v10, "HTC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "One"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_6
    const-string/jumbo v10, "GT-N7100"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "GT-I9300"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 7091
    :cond_7
    new-instance v3, Landroid/graphics/Point;

    const/16 v10, 0x500

    const/16 v11, 0x2d0

    invoke-direct {v3, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v8, Liif;->c:Landroid/graphics/Point;

    .line 7097
    :cond_8
    :goto_1
    const-string/jumbo v3, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Camera resolution: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v8, Liif;->c:Landroid/graphics/Point;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7098
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v8}, Liil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 7099
    const/16 v3, 0x14

    const/16 v8, 0x1e

    invoke-static {v9, v3, v8}, Liij;->a(Landroid/hardware/Camera$Parameters;II)V

    .line 6129
    :cond_9
    iput-object v9, v6, Liig;->d:Landroid/hardware/Camera$Parameters;

    .line 6130
    iget-object v3, v6, Liig;->b:Liif;

    .line 7215
    iget-object v3, v3, Liif;->b:Landroid/graphics/Point;

    .line 6130
    iput-object v3, v6, Liig;->j:Landroid/graphics/Point;

    .line 6131
    iget-object v3, v6, Liig;->b:Liif;

    .line 7303
    iget-object v3, v3, Liif;->c:Landroid/graphics/Point;

    .line 6131
    iput-object v3, v6, Liig;->k:Landroid/graphics/Point;

    .line 6132
    iget-object v3, v6, Liig;->b:Liif;

    .line 7311
    iget-object v3, v3, Liif;->d:Landroid/graphics/Point;

    .line 6132
    iput-object v3, v6, Liig;->l:Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6135
    :cond_a
    :try_start_1
    iget-object v3, v6, Liig;->b:Liif;

    iget-object v8, v6, Liig;->d:Landroid/hardware/Camera$Parameters;

    sget v9, Liii;->b:I

    invoke-virtual {v3, v7, v8, v9}, Liif;->a(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6151
    :cond_b
    :goto_2
    :try_start_2
    const-string/jumbo v3, "CameraManager"

    const-string/jumbo v7, "End of Setting Preview Parameters"

    invoke-static {v3, v7}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6152
    iget-object v3, v6, Liig;->b:Liif;

    .line 8064
    iget v3, v3, Liif;->e:I

    .line 6152
    iput v3, v6, Liig;->h:I

    .line 6154
    iget-object v3, v6, Liig;->b:Liif;

    .line 8303
    iget-object v3, v3, Liif;->c:Landroid/graphics/Point;

    .line 6154
    iput-object v3, v6, Liig;->k:Landroid/graphics/Point;

    .line 8611
    const-string/jumbo v3, "MPaasScanServiceImpl"

    const-string/jumbo v6, "setPreviewCallback()"

    invoke-static {v3, v6}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8612
    iget-object v3, p0, Liiz;->e:Liig;

    if-eqz v3, :cond_c

    iget-object v3, p0, Liiz;->e:Liig;

    .line 9300
    iget-object v3, v3, Liig;->c:Landroid/hardware/Camera;

    .line 8612
    if-nez v3, :cond_1b

    .line 294
    :cond_c
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Liiz;->t:Z

    .line 295
    iget-object v3, p0, Liiz;->e:Liig;

    .line 13308
    iget-object v3, v3, Liig;->d:Landroid/hardware/Camera$Parameters;

    .line 295
    iput-object v3, p0, Liiz;->l:Landroid/hardware/Camera$Parameters;

    .line 296
    iget-object v3, p0, Liiz;->e:Liig;

    .line 14102
    iget-object v3, v3, Liig;->j:Landroid/graphics/Point;

    .line 296
    iput-object v3, p0, Liiz;->m:Landroid/graphics/Point;

    .line 297
    iget-object v3, p0, Liiz;->e:Liig;

    .line 15094
    iget-object v3, v3, Liig;->k:Landroid/graphics/Point;

    .line 297
    iput-object v3, p0, Liiz;->n:Landroid/graphics/Point;

    .line 298
    iget-object v3, p0, Liiz;->e:Liig;

    .line 15098
    iget-object v3, v3, Liig;->l:Landroid/graphics/Point;

    .line 298
    iput-object v3, p0, Liiz;->o:Landroid/graphics/Point;

    .line 299
    iget-object v3, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_d

    .line 300
    invoke-virtual {p0}, Liiz;->e()V

    .line 302
    :cond_d
    iget-boolean v3, p0, Liiz;->s:Z

    if-eqz v3, :cond_e

    .line 303
    iget-boolean v3, p0, Liiz;->b:Z

    if-eqz v3, :cond_1e

    .line 305
    .local v2, "terminate_duration":I
    :goto_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Liiz$1;

    invoke-direct {v5, p0, v2}, Liiz$1;-><init>(Liiz;I)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 331
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    .end local v2    # "terminate_duration":I
    :cond_e
    iget-object v3, p0, Liiz;->e:Liig;

    if-eqz v3, :cond_f

    iget-object v3, p0, Liiz;->e:Liig;

    invoke-virtual {v3}, Liig;->a()Z

    move-result v3

    if-nez v3, :cond_10

    .line 342
    :cond_f
    iput-boolean v12, p0, Liiz;->t:Z

    .line 343
    const-string/jumbo v3, "MPaasScanServiceImpl"

    const-string/jumbo v5, "camera open false"

    invoke-static {v3, v5}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_10
    iget-boolean v3, p0, Liiz;->t:Z

    if-nez v3, :cond_0

    .line 346
    iput-boolean v12, p0, Liiz;->u:Z

    .line 347
    iput-object v4, p0, Liiz;->l:Landroid/hardware/Camera$Parameters;

    .line 348
    iput-object v4, p0, Liiz;->m:Landroid/graphics/Point;

    .line 349
    iput-object v4, p0, Liiz;->n:Landroid/graphics/Point;

    .line 350
    iput-object v4, p0, Liiz;->o:Landroid/graphics/Point;

    .line 351
    iget-object v3, p0, Liiz;->f:Liix;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Liiz;->s:Z

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Liiz;->f:Liix;

    new-instance v4, Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    sget-object v5, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraOpenError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v6, ""

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/bqcscanservice/BQCScanError;-><init>(Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V

    goto/16 :goto_0

    .line 7092
    :cond_11
    :try_start_3
    const-string/jumbo v10, "u8800"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 7093
    new-instance v3, Landroid/graphics/Point;

    const/16 v10, 0x2d0

    const/16 v11, 0x1e0

    invoke-direct {v3, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v8, Liif;->c:Landroid/graphics/Point;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Liiz;->t:Z

    .line 335
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string/jumbo v3, "MPaasScanServiceImpl"

    const-string/jumbo v5, "camera open error"

    invoke-static {v3, v5}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Liiz;->p:Lija;

    if-eqz v3, :cond_12

    .line 338
    iget-object v5, p0, Liiz;->p:Lija;

    .line 16020
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 16023
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 16024
    const-string/jumbo v6, "service"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 16025
    const/16 v3, 0x7d1

    .line 16045
    :goto_5
    sget v6, Lija$a;->b:I

    iput v6, v5, Lija;->a:I

    .line 16046
    iput v3, v5, Lija;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    :cond_12
    iget-object v3, p0, Liiz;->e:Liig;

    if-eqz v3, :cond_13

    iget-object v3, p0, Liiz;->e:Liig;

    invoke-virtual {v3}, Liig;->a()Z

    move-result v3

    if-nez v3, :cond_14

    .line 342
    :cond_13
    iput-boolean v12, p0, Liiz;->t:Z

    .line 343
    const-string/jumbo v3, "MPaasScanServiceImpl"

    const-string/jumbo v5, "camera open false"

    invoke-static {v3, v5}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_14
    iget-boolean v3, p0, Liiz;->t:Z

    if-nez v3, :cond_0

    .line 346
    iput-boolean v12, p0, Liiz;->u:Z

    .line 347
    iput-object v4, p0, Liiz;->l:Landroid/hardware/Camera$Parameters;

    .line 348
    iput-object v4, p0, Liiz;->m:Landroid/graphics/Point;

    .line 349
    iput-object v4, p0, Liiz;->n:Landroid/graphics/Point;

    .line 350
    iput-object v4, p0, Liiz;->o:Landroid/graphics/Point;

    .line 351
    iget-object v3, p0, Liiz;->f:Liix;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Liiz;->s:Z

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Liiz;->f:Liix;

    new-instance v4, Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    sget-object v5, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraOpenError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    if-nez v0, :cond_15

    const-string/jumbo v0, ""

    .end local v0    # "msg":Ljava/lang/String;
    :cond_15
    invoke-direct {v4, v5, v0}, Lcom/alipay/mobile/bqcscanservice/BQCScanError;-><init>(Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V

    goto/16 :goto_0

    .line 7094
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_16
    :try_start_5
    const-string/jumbo v10, "MI PAD"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7095
    new-instance v3, Landroid/graphics/Point;

    const/16 v10, 0x800

    const/16 v11, 0x600

    invoke-direct {v3, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v8, Liif;->c:Landroid/graphics/Point;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 341
    :catchall_0
    move-exception v3

    iget-object v5, p0, Liiz;->e:Liig;

    if-eqz v5, :cond_17

    iget-object v5, p0, Liiz;->e:Liig;

    invoke-virtual {v5}, Liig;->a()Z

    move-result v5

    if-nez v5, :cond_18

    .line 342
    :cond_17
    iput-boolean v12, p0, Liiz;->t:Z

    .line 343
    const-string/jumbo v5, "MPaasScanServiceImpl"

    const-string/jumbo v6, "camera open false"

    invoke-static {v5, v6}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_18
    iget-boolean v5, p0, Liiz;->t:Z

    if-nez v5, :cond_1a

    .line 346
    iput-boolean v12, p0, Liiz;->u:Z

    .line 347
    iput-object v4, p0, Liiz;->l:Landroid/hardware/Camera$Parameters;

    .line 348
    iput-object v4, p0, Liiz;->m:Landroid/graphics/Point;

    .line 349
    iput-object v4, p0, Liiz;->n:Landroid/graphics/Point;

    .line 350
    iput-object v4, p0, Liiz;->o:Landroid/graphics/Point;

    .line 351
    iget-object v4, p0, Liiz;->f:Liix;

    if-eqz v4, :cond_1a

    iget-boolean v4, p0, Liiz;->s:Z

    if-eqz v4, :cond_1a

    .line 352
    iget-object v4, p0, Liiz;->f:Liix;

    new-instance v5, Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    sget-object v6, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraOpenError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    if-nez v0, :cond_19

    const-string/jumbo v0, ""

    .end local v0    # "msg":Ljava/lang/String;
    :cond_19
    invoke-direct {v5, v6, v0}, Lcom/alipay/mobile/bqcscanservice/BQCScanError;-><init>(Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V

    :cond_1a
    throw v3

    .line 6138
    .restart local v0    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v3

    :try_start_6
    const-string/jumbo v3, "recordCameraParameterSetFail"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 6141
    const-string/jumbo v3, "CameraManager"

    const-string/jumbo v8, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3, v8}, Lcom/alipay/mobile/bqcscanservice/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6142
    const-string/jumbo v3, "CameraManager"

    const-string/jumbo v8, "Resetting to saved camera params"

    invoke-static {v3, v8}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6143
    iget-object v3, v6, Liig;->d:Landroid/hardware/Camera$Parameters;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_b

    .line 6145
    :try_start_7
    iget-object v3, v6, Liig;->b:Liif;

    iget-object v8, v6, Liig;->d:Landroid/hardware/Camera$Parameters;

    sget v9, Liii;->b:I

    invoke-virtual {v3, v7, v8, v9}, Liif;->a(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 6147
    :catch_2
    move-exception v3

    :try_start_8
    const-string/jumbo v3, "CameraManager"

    const-string/jumbo v7, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v3, v7}, Lcom/alipay/mobile/bqcscanservice/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8615
    :cond_1b
    iget-object v3, p0, Liiz;->e:Liig;

    .line 10077
    iget-object v3, v3, Liig;->k:Landroid/graphics/Point;

    .line 10078
    if-nez v3, :cond_1c

    move v6, v5

    .line 8616
    :goto_6
    iget-object v3, p0, Liiz;->e:Liig;

    .line 10082
    iget-object v3, v3, Liig;->k:Landroid/graphics/Point;

    .line 10083
    if-nez v3, :cond_1d

    move v3, v5

    .line 8617
    :goto_7
    iget-object v7, p0, Liiz;->e:Liig;

    .line 10088
    iget-object v7, v7, Liig;->b:Liif;

    .line 10307
    iget v7, v7, Liif;->f:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 8618
    if-eq v6, v5, :cond_c

    if-eq v3, v5, :cond_c

    if-eq v7, v5, :cond_c

    .line 8622
    mul-int/2addr v3, v6

    :try_start_9
    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    mul-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x8

    .line 8623
    iget-object v5, p0, Liiz;->e:Liig;

    .line 11300
    iget-object v5, v5, Liig;->c:Landroid/hardware/Camera;

    .line 8624
    new-array v6, v3, [B

    .line 8625
    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 8627
    iget-object v5, p0, Liiz;->f:Liix;

    .line 12159
    iget-boolean v5, v5, Liix;->k:Z

    .line 8627
    if-eqz v5, :cond_22

    .line 8628
    new-array v3, v3, [B

    .line 8630
    :goto_8
    iget-object v5, p0, Liiz;->f:Liix;

    .line 13066
    iput-object v6, v5, Liix;->h:[B

    .line 13067
    iput-object v3, v5, Liix;->i:[B

    .line 8631
    const-string/jumbo v3, "MPaasScanServiceImpl"

    const-string/jumbo v5, "requestPreviewFrameWithBuffer"

    invoke-static {v3, v5}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8632
    iget-object v3, p0, Liiz;->e:Liig;

    iget-object v5, p0, Liiz;->f:Liix;

    invoke-virtual {v3, v5}, Liig;->a(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 8633
    :catch_3
    move-exception v3

    .line 8634
    :try_start_a
    const-string/jumbo v5, "MPaasScanServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setPreviewCallback error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 10078
    :cond_1c
    iget v3, v3, Landroid/graphics/Point;->x:I

    move v6, v3

    goto :goto_6

    .line 10083
    :cond_1d
    iget v3, v3, Landroid/graphics/Point;->y:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 303
    :cond_1e
    const/16 v2, 0xa

    goto/16 :goto_4

    .line 16026
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_1f
    :try_start_b
    const-string/jumbo v6, "initial"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 16027
    const/16 v3, 0x7d2

    goto/16 :goto_5

    .line 16028
    :cond_20
    const-string/jumbo v6, "unknown"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v3

    if-eqz v3, :cond_21

    .line 16029
    const/16 v3, 0x7d3

    goto/16 :goto_5

    .line 16031
    :cond_21
    const/16 v3, 0x7d4

    goto/16 :goto_5

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_22
    move-object v3, v4

    goto :goto_8
.end method

.method public final a(I)V
    .locals 12
    .param p1, "zoom"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 470
    iget-object v0, p0, Liiz;->e:Liig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liiz;->e:Liig;

    invoke-virtual {v0}, Liig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :try_start_0
    iget-object v3, p0, Liiz;->e:Liig;

    .line 21271
    iget-object v0, v3, Liig;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, v3, Liig;->i:Z

    if-nez v0, :cond_1

    .line 21272
    const/4 v0, 0x1

    iput-boolean v0, v3, Liig;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21274
    :try_start_1
    iget-object v0, v3, Liig;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 21276
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v8

    double-to-int v0, v0

    .line 21277
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    float-to-double v6, v1

    add-double/2addr v6, v8

    double-to-int v1, v6

    .line 21278
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_3

    .line 21279
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 21285
    :goto_0
    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "The object Zoom is %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21286
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21287
    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 21288
    iget-object v0, v3, Liig;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21295
    :cond_0
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v3, Liig;->i:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 477
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 21279
    goto :goto_0

    .line 21281
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoom()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    int-to-double v6, v2

    int-to-double v8, p1

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v2, v6

    .line 21282
    if-ge v2, v0, :cond_4

    move v0, v2

    .line 21283
    :cond_4
    if-ge v0, v1, :cond_5

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_3

    .line 21290
    :catch_0
    move-exception v0

    .line 21291
    :try_start_4
    const-string/jumbo v1, "recordSetZoomException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 21292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 21291
    invoke-static {v1, v2, v4}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 21293
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SetZoomParameters : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 474
    :catch_1
    move-exception v0

    const-string/jumbo v0, "MPaasScanServiceImpl"

    const-string/jumbo v1, "setZoom exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(J)V
    .locals 5
    .param p1, "postcode"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 217
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 220
    :cond_0
    iput-boolean v2, p0, Liiz;->b:Z

    .line 221
    iput-object v3, p0, Liiz;->q:Liih;

    .line 222
    iput-object v3, p0, Liiz;->e:Liig;

    .line 223
    iget-object v0, p0, Liiz;->f:Liix;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Liiz;->f:Liix;

    .line 2096
    iput-object v3, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    .line 225
    iget-object v0, p0, Liiz;->f:Liix;

    .line 2447
    iget-object v1, v0, Liix;->f:Liix$a;

    if-eqz v1, :cond_5

    .line 2448
    iget-object v1, v0, Liix;->f:Liix$a;

    invoke-virtual {v1}, Liix$a;->a()V

    .line 2452
    :goto_1
    iput-object v3, v0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    .line 2453
    iput-object v3, v0, Liix;->a:Landroid/content/Context;

    .line 2454
    iput-object v3, v0, Liix;->f:Liix$a;

    .line 2455
    iput-object v3, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    .line 2456
    iput-object v3, v0, Liix;->c:Lfk;

    .line 2457
    iput-object v3, v0, Liix;->d:Lfk;

    .line 2458
    iput-object v3, v0, Liix;->j:Landroid/hardware/Camera;

    .line 2459
    iput-object v3, v0, Liix;->h:[B

    .line 2460
    iput-object v3, v0, Liix;->i:[B

    .line 226
    iput-object v3, p0, Liiz;->f:Liix;

    .line 229
    :cond_1
    iget-object v0, p0, Liiz;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Liiz;->g:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 231
    iput-object v3, p0, Liiz;->g:Landroid/view/TextureView;

    .line 234
    :cond_2
    iput-object v3, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    .line 235
    iput-boolean v2, p0, Liiz;->w:Z

    .line 236
    iput-object v3, p0, Liiz;->i:Landroid/view/TextureView$SurfaceTextureListener;

    .line 238
    iput-boolean v2, p0, Liiz;->t:Z

    .line 239
    iput-boolean v2, p0, Liiz;->u:Z

    .line 240
    iput-boolean v2, p0, Liiz;->v:Z

    .line 3041
    sget-object v0, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    sget-object v0, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3043
    :try_start_0
    sget-object v0, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 3044
    const-string/jumbo v0, "ScanExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Shutdown Successfully : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    const/4 v0, 0x0

    sput-object v0, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_3
    :goto_2
    iget-object v0, p0, Liiz;->p:Lija;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Liiz;->p:Lija;

    invoke-virtual {v0}, Lija;->a()V

    .line 4017
    :cond_4
    sput-object v3, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    goto :goto_0

    .line 2450
    :cond_5
    iget-object v1, v0, Liix;->e:Lcom/alipay/mobile/bqcscanservice/b;

    invoke-static {v1}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/b;)V

    goto :goto_1

    .line 3047
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ScanExecutor"

    const-string/jumbo v1, "Shutdown executor failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/mobile/bqcscanservice/a;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/alipay/mobile/bqcscanservice/a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    const-string/jumbo v0, "MPaasScanServiceImpl"

    const-string/jumbo v1, "setup()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Liig;

    iget-object v2, p0, Liiz;->l:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Liiz;->m:Landroid/graphics/Point;

    iget-object v4, p0, Liiz;->n:Landroid/graphics/Point;

    iget-object v5, p0, Liiz;->o:Landroid/graphics/Point;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Liig;-><init>(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v0, p0, Liiz;->e:Liig;

    .line 183
    new-instance v0, Liix;

    const/4 v1, 0x0

    iget-object v2, p0, Liiz;->c:Lcom/alipay/mobile/bqcscanservice/d;

    iget-boolean v3, p0, Liiz;->b:Z

    invoke-direct {v0, p1, v1, v2, v3}, Liix;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/alipay/mobile/bqcscanservice/d;Z)V

    iput-object v0, p0, Liiz;->f:Liix;

    .line 184
    iget-object v0, p0, Liiz;->f:Liix;

    .line 1096
    iput-object p2, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    .line 185
    new-instance v0, Liiz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liiz$a;-><init>(Liiz;B)V

    iput-object v0, p0, Liiz;->i:Landroid/view/TextureView$SurfaceTextureListener;

    .line 186
    iget-object v0, p0, Liiz;->f:Liix;

    const-wide/16 v2, 0x0

    .line 1185
    iget-object v1, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v1, :cond_2

    .line 1186
    iget-object v0, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/bqcscanservice/a;->a(J)V

    .line 2021
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2022
    const-string/jumbo v0, "ScanExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Open Successfully : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Liiw;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Liiz;->p:Lija;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Liiz;->p:Lija;

    invoke-virtual {v0}, Lija;->a()V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 424
    iget-object v0, p0, Liiz;->r:Landroid/graphics/Point;

    .line 19429
    iput-object v0, p0, Liiz;->r:Landroid/graphics/Point;

    .line 19430
    iget-object v0, p0, Liiz;->e:Liig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liiz;->f:Liix;

    if-eqz v0, :cond_0

    .line 19431
    iget-object v0, p0, Liiz;->f:Liix;

    .line 19443
    iput-object p1, v0, Liix;->g:Landroid/graphics/Rect;

    .line 425
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/TextureView;)V
    .locals 6
    .param p1, "view"    # Landroid/view/TextureView;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 195
    if-nez p1, :cond_1

    .line 196
    iget-object v1, p0, Liiz;->g:Landroid/view/TextureView;

    .line 197
    .local v1, "localTextureView":Landroid/view/TextureView;
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 213
    .end local v1    # "localTextureView":Landroid/view/TextureView;
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string/jumbo v2, "MPaasScanServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setDisplay():surfaceCallback:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Liiz;->i:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Liiz;->i:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 204
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    .line 205
    .local v0, "isSurfaceReady":Z
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    .line 210
    :goto_1
    const-string/jumbo v2, "MPaasScanServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setDisplay():texture.isAvailable()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "surfaceTexture is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Liiz;->g:Landroid/view/TextureView;

    goto :goto_0

    .line 208
    :cond_2
    iput-object v5, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;Lcom/alipay/mobile/bqcscanservice/b$a;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "engineCallback"    # Lcom/alipay/mobile/bqcscanservice/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/bqcscanservice/b;",
            ">;",
            "Lcom/alipay/mobile/bqcscanservice/b$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 250
    .local p2, "engine":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alipay/mobile/bqcscanservice/b;>;"
    const-string/jumbo v0, "MPaasScanServiceImpl"

    const-string/jumbo v1, "regScanEngine()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Liiz;->f:Liix;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Liiz;->f:Liix;

    .line 4075
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4076
    :cond_0
    :goto_0
    return-void

    .line 4078
    :cond_1
    iget-object v1, v0, Liix;->c:Lfk;

    if-nez v1, :cond_2

    .line 4079
    new-instance v1, Lfk;

    invoke-direct {v1}, Lfk;-><init>()V

    iput-object v1, v0, Liix;->c:Lfk;

    .line 4081
    :cond_2
    iget-object v1, v0, Liix;->c:Lfk;

    invoke-virtual {v1, p1, p2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4082
    iget-object v1, v0, Liix;->d:Lfk;

    if-nez v1, :cond_3

    .line 4083
    new-instance v1, Lfk;

    invoke-direct {v1}, Lfk;-><init>()V

    iput-object v1, v0, Liix;->d:Lfk;

    .line 4085
    :cond_3
    iget-object v0, v0, Liix;->d:Lfk;

    invoke-virtual {v0, p1, p3}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Liiz;->e:Liig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Liiz;->f:Liix;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Liiz;->f:Liix;

    invoke-virtual {v1, p1}, Liix;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MPaasScanServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    const-string/jumbo v0, "MPaasScanServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setScanType("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Liiz;->e:Liig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liiz;->f:Liix;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Liiz;->f:Liix;

    invoke-virtual {v0, p1, p2}, Liix;->a(Ljava/lang/String;Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)Z

    move-result v0

    monitor-exit p0

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 361
    monitor-enter p0

    .line 362
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Liiz;->k:J

    .line 363
    iget-object v1, p0, Liiz;->f:Liix;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Liiz;->f:Liix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Liix;->a(Z)V

    .line 365
    iget-object v1, p0, Liiz;->p:Lija;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Liiz;->p:Lija;

    iget-object v2, p0, Liiz;->f:Liix;

    .line 16478
    iget-object v2, v2, Liix;->l:Lijb;

    .line 17061
    if-eqz v2, :cond_0

    .line 17064
    iget-boolean v3, v2, Lijb;->b:Z

    if-nez v3, :cond_0

    .line 17067
    iget v3, v2, Lijb;->a:I

    if-nez v3, :cond_6

    iget-wide v4, v2, Lijb;->c:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 17068
    sget v3, Lija$a;->d:I

    iput v3, v1, Lija;->a:I

    .line 17069
    iget-wide v2, v2, Lijb;->c:J

    iput-wide v2, v1, Lija;->d:J

    .line 369
    :cond_0
    :goto_0
    iget-object v1, p0, Liiz;->e:Liig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 371
    :try_start_1
    iget-object v1, p0, Liiz;->e:Liig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Liig;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 372
    iget-object v1, p0, Liiz;->e:Liig;

    .line 17211
    iget-object v2, v1, Liig;->e:Liie;

    if-eqz v2, :cond_1

    .line 17212
    iget-object v2, v1, Liig;->e:Liie;

    invoke-virtual {v2}, Liie;->b()V

    .line 17213
    const/4 v2, 0x0

    iput-object v2, v1, Liig;->e:Liie;

    .line 17215
    :cond_1
    iget-object v2, v1, Liig;->c:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Liig;->f:Z

    if-eqz v2, :cond_2

    .line 17216
    iget-object v2, v1, Liig;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 17217
    const/4 v2, 0x0

    iput-boolean v2, v1, Liig;->f:Z

    .line 373
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Liiz;->w:Z

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    .line 375
    iget-object v1, p0, Liiz;->e:Liig;

    .line 18165
    iget-object v2, v1, Liig;->c:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 18166
    iget-object v2, v1, Liig;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 18167
    const/4 v2, 0x0

    iput-object v2, v1, Liig;->c:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :cond_3
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Liiz;->t:Z

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Liiz;->u:Z

    .line 382
    const/4 v1, 0x0

    iput-boolean v1, p0, Liiz;->x:Z

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, p0, Liiz;->v:Z

    .line 385
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Liiz;->j:J

    .line 386
    iget-object v1, p0, Liiz;->p:Lija;

    if-eqz v1, :cond_4

    .line 387
    const-string/jumbo v1, "recordScanDiagnose"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lija;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Liiz;->p:Lija;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 389
    iget-object v1, p0, Liiz;->p:Lija;

    invoke-virtual {v1}, Lija;->a()V

    .line 391
    :cond_4
    iget-object v1, p0, Liiz;->f:Liix;

    if-eqz v1, :cond_5

    .line 392
    iget-object v1, p0, Liiz;->f:Liix;

    const/4 v2, 0x0

    .line 18474
    iput-boolean v2, v1, Liix;->m:Z

    .line 393
    iget-object v1, p0, Liiz;->f:Liix;

    .line 19206
    iget-object v2, v1, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v2, :cond_5

    .line 19207
    iget-object v1, v1, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/a;->e()V

    .line 395
    :cond_5
    monitor-exit p0

    return-void

    .line 17070
    :cond_6
    iget v3, v2, Lijb;->e:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, v2, Lijb;->a:I

    if-lez v3, :cond_0

    iget-wide v4, v2, Lijb;->c:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 17073
    sget v3, Lija$a;->e:I

    iput v3, v1, Lija;->a:I

    .line 17074
    iget v3, v2, Lijb;->a:I

    iput v3, v1, Lija;->c:I

    .line 17075
    iget-wide v4, v2, Lijb;->c:J

    iput-wide v4, v1, Lija;->d:J

    .line 17076
    iget v2, v2, Lijb;->e:F

    iput v2, v1, Lija;->e:F

    goto/16 :goto_0

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "MPaasScanServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "camera stopPreview error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public final b(Z)V
    .locals 5
    .param p1, "on"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v2, p0, Liiz;->e:Liig;

    if-eqz v2, :cond_4

    iget-object v2, p0, Liiz;->e:Liig;

    invoke-virtual {v2}, Liig;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    :try_start_0
    iget-object v2, p0, Liiz;->e:Liig;
    :try_end_0
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 20226
    :try_start_1
    iget-object v3, v2, Liig;->c:Landroid/hardware/Camera;

    .line 21219
    if-eqz v3, :cond_1

    .line 21220
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 21221
    if-eqz v3, :cond_1

    .line 21222
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    .line 21223
    if-eqz v3, :cond_1

    const-string/jumbo v4, "on"

    .line 21224
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "torch"

    .line 21225
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 20226
    :cond_1
    if-eq p1, v1, :cond_3

    .line 20227
    iget-object v1, v2, Liig;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    .line 20228
    iget-object v1, v2, Liig;->e:Liie;

    if-eqz v1, :cond_2

    .line 20229
    iget-object v1, v2, Liig;->e:Liie;

    invoke-virtual {v1}, Liie;->b()V

    .line 20231
    :cond_2
    iget-object v1, v2, Liig;->b:Liif;

    iget-object v1, v2, Liig;->c:Landroid/hardware/Camera;

    .line 21232
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 21248
    invoke-static {v3, p1}, Liij;->b(Landroid/hardware/Camera$Parameters;Z)V
    :try_end_1
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 21235
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_2 .. :try_end_2} :catch_1

    .line 20232
    :try_start_3
    iget-object v1, v2, Liig;->e:Liie;

    if-eqz v1, :cond_3

    .line 20233
    iget-object v1, v2, Liig;->e:Liie;

    invoke-virtual {v1}, Liie;->a()V
    :try_end_3
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 440
    :cond_3
    :try_start_4
    iput-boolean p1, p0, Liiz;->v:Z
    :try_end_4
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 452
    :cond_4
    :goto_0
    return-void

    .line 21236
    :catch_0
    move-exception v1

    .line 21238
    :try_start_5
    new-instance v2, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;

    const/16 v3, 0xfa1

    .line 21239
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v3, v1}, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;-><init>(ZILjava/lang/String;)V

    throw v2
    :try_end_5
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 20237
    :catch_1
    move-exception v1

    .line 20238
    :try_start_6
    new-instance v2, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;

    iget-boolean v3, v1, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;->state:Z

    iget v4, v1, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;->errorCode:I

    invoke-virtual {v1}, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;-><init>(ZILjava/lang/String;)V

    throw v2
    :try_end_6
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 441
    :catch_2
    move-exception v0

    .line 442
    .local v0, "e":Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;
    iget-object v1, p0, Liiz;->p:Lija;

    if-eqz v1, :cond_4

    .line 443
    iget-object v1, p0, Liiz;->p:Lija;

    iget-boolean v2, v0, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;->state:Z

    iget v3, v0, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;->errorCode:I

    invoke-virtual {v1, v2, v3}, Lija;->a(ZI)V

    goto :goto_0

    .line 20239
    .end local v0    # "e":Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;
    :catch_3
    move-exception v1

    .line 20240
    :try_start_7
    const-string/jumbo v2, "CameraManager"

    const-string/jumbo v3, "maybe light hardware broken "

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20241
    new-instance v2, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;

    const/16 v3, 0xfa2

    .line 20242
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v3, v1}, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;-><init>(ZILjava/lang/String;)V

    throw v2
    :try_end_7
    .catch Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 446
    :catch_4
    move-exception v1

    const-string/jumbo v1, "MPaasScanServiceImpl"

    const-string/jumbo v2, "setTorch exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Liiz;->p:Lija;

    if-eqz v1, :cond_4

    .line 448
    iget-object v1, p0, Liiz;->p:Lija;

    const/16 v2, 0xfa3

    invoke-virtual {v1, p1, v2}, Lija;->a(ZI)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Liiz;->v:Z

    return v0
.end method

.method public final d()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Liiz;->e:Liig;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Liiz;->e:Liig;

    .line 21300
    iget-object v0, v0, Liig;->c:Landroid/hardware/Camera;

    .line 557
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 562
    const-string/jumbo v4, "MPaasScanServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSurfaceAvailable:surfaceTexture:"

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", is surfaceAvailable "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", surfaceAlreadySet:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Liiz;->w:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Liiz;->w:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Liiz;->e:Liig;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Liiz;->t:Z

    if-eqz v1, :cond_3

    .line 567
    iput-boolean v2, p0, Liiz;->w:Z

    .line 569
    :try_start_0
    iget-object v1, p0, Liiz;->e:Liig;

    iget-object v2, p0, Liiz;->h:Landroid/graphics/SurfaceTexture;

    .line 22106
    iget-object v4, v1, Liig;->c:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 22109
    iget-object v1, v1, Liig;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 570
    :cond_0
    iget-object v1, p0, Liiz;->e:Liig;

    .line 22175
    iget-object v2, v1, Liig;->c:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22177
    if-eqz v2, :cond_2

    :try_start_1
    iget-boolean v4, v1, Liig;->f:Z

    if-nez v4, :cond_2

    .line 22178
    const-string/jumbo v4, "CameraManager"

    const-string/jumbo v5, "start native startPreview()"

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22179
    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 22180
    const-string/jumbo v2, "CameraManager"

    const-string/jumbo v4, "end native startPreview()"

    invoke-static {v2, v4}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22181
    const/4 v2, 0x1

    iput-boolean v2, v1, Liig;->f:Z

    .line 22182
    iget-object v2, v1, Liig;->b:Liif;

    invoke-virtual {v2}, Liif;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "auto"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22184
    new-instance v2, Liie;

    iget-object v4, v1, Liig;->a:Landroid/content/Context;

    iget-object v5, v1, Liig;->c:Landroid/hardware/Camera;

    invoke-direct {v2, v4, v5}, Liie;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v2, v1, Liig;->e:Liie;

    .line 22185
    iget-object v2, v1, Liig;->e:Liie;

    iget-wide v4, v1, Liig;->g:J

    .line 22200
    const-string/jumbo v6, "AutoFocusManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setAutoFocusInterval:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22201
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 22202
    iput-wide v4, v2, Liie;->a:J

    .line 22186
    :cond_1
    iget-object v1, v1, Liig;->e:Liie;

    .line 23194
    iget-object v2, v1, Liie;->b:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 23195
    iget-object v1, v1, Liie;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 571
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Liiz;->f:Liix;

    if-eqz v1, :cond_3

    .line 572
    iget-object v1, p0, Liiz;->f:Liix;

    .line 23239
    iget-object v2, v1, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v2, :cond_3

    .line 23240
    const-string/jumbo v2, "BQCScanController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reportCameraReady: callback="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23241
    iget-object v1, v1, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/a;->d()V

    .line 582
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v3

    .line 562
    goto/16 :goto_0

    .line 22189
    :catch_0
    move-exception v1

    .line 22190
    const-string/jumbo v2, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startPreview error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 574
    :catch_1
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MPaasScanServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Set Preview Exception : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Liiz;->p:Lija;

    if-eqz v1, :cond_3

    .line 577
    iget-object v1, p0, Liiz;->p:Lija;

    const-string/jumbo v2, "start_camera"

    .line 24042
    const-string/jumbo v4, "start_camera"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 24043
    const/16 v3, 0xbb9

    .line 24050
    :cond_5
    :goto_3
    sget v2, Lija$a;->c:I

    iput v2, v1, Lija;->a:I

    .line 24051
    iput v3, v1, Lija;->b:I

    goto :goto_2

    .line 24044
    :cond_6
    const-string/jumbo v4, "reconnect_camera"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24045
    const/16 v3, 0xbba

    goto :goto_3
.end method

.method public final f()Lcom/alipay/mobile/bqcscanservice/d;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Liiz;->c:Lcom/alipay/mobile/bqcscanservice/d;

    return-object v0
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/d;

    invoke-direct {v0}, Lcom/alipay/mobile/bqcscanservice/d;-><init>()V

    iput-object v0, p0, Liiz;->c:Lcom/alipay/mobile/bqcscanservice/d;

    .line 95
    iget-object v0, p0, Liiz;->c:Lcom/alipay/mobile/bqcscanservice/d;

    .line 1046
    iget-object v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/bqcscanservice/d$1;

    invoke-direct {v2, v0, p0}, Lcom/alipay/mobile/bqcscanservice/d$1;-><init>(Lcom/alipay/mobile/bqcscanservice/d;Lcom/alipay/mobile/bqcscanservice/f;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Liiz;->d:J

    .line 97
    iput-object v3, p0, Liiz;->l:Landroid/hardware/Camera$Parameters;

    .line 98
    iput-object v3, p0, Liiz;->m:Landroid/graphics/Point;

    .line 99
    iput-object v3, p0, Liiz;->o:Landroid/graphics/Point;

    .line 100
    iput-object v3, p0, Liiz;->n:Landroid/graphics/Point;

    .line 101
    iget-object v0, p0, Liiz;->p:Lija;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lija;

    invoke-direct {v0}, Lija;-><init>()V

    iput-object v0, p0, Liiz;->p:Lija;

    .line 104
    :cond_0
    return-void
.end method

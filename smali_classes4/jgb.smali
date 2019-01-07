.class public final Ljgb;
.super Ljfz;
.source "EGLBase14.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljgb$c;,
        Ljgb$a;,
        Ljgb$b;
    }
.end annotation


# static fields
.field private static final c:Ljgb$b;


# instance fields
.field b:I

.field private d:Ljgb$a;

.field private e:Ljgb$b;

.field private f:Landroid/opengl/EGLDisplay;

.field private g:Landroid/opengl/EGLContext;

.field private final h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljgb$b;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljgb$b;-><init>(Landroid/opengl/EGLContext;B)V

    sput-object v0, Ljgb;->c:Ljgb$b;

    return-void
.end method

.method public constructor <init>(ILjgb$b;ZIZ)V
    .locals 8
    .param p1, "maxClientVersion"    # I
    .param p2, "sharedContext"    # Ljgb$b;
    .param p3, "withDepthBuffer"    # Z
    .param p4, "stencilBits"    # I
    .param p5, "isRecordable"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 163
    invoke-direct {p0}, Ljfz;-><init>()V

    .line 50
    iput-object v2, p0, Ljgb;->d:Ljgb$a;

    .line 51
    sget-object v0, Ljgb;->c:Ljgb$b;

    iput-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 53
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Ljgb;->g:Landroid/opengl/EGLContext;

    .line 55
    iput v5, p0, Ljgb;->b:I

    .line 428
    new-array v0, v5, [I

    iput-object v0, p0, Ljgb;->h:[I

    .line 1277
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "EGL already set up"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_0
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    .line 1282
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_1

    .line 1283
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_1
    new-array v0, v5, [I

    .line 1287
    iget-object v1, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v4, v0, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1288
    iput-object v2, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    .line 1289
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_2
    if-eqz p2, :cond_5

    .line 1295
    .end local p2    # "sharedContext":Ljgb$b;
    :goto_0
    if-lt p1, v7, :cond_3

    .line 1297
    invoke-direct {p0, v7, p3, p4, p5}, Ljgb;->a(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 1298
    if-eqz v0, :cond_3

    .line 1299
    invoke-direct {p0, p2, v0, v7}, Ljgb;->a(Ljgb$b;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 1300
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_3

    .line 1301
    new-instance v2, Ljgb$a;

    invoke-direct {v2, v0, v4}, Ljgb$a;-><init>(Landroid/opengl/EGLConfig;B)V

    iput-object v2, p0, Ljgb;->d:Ljgb$a;

    .line 1302
    new-instance v0, Ljgb$b;

    invoke-direct {v0, v1, v4}, Ljgb$b;-><init>(Landroid/opengl/EGLContext;B)V

    iput-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 1303
    iput v7, p0, Ljgb;->b:I

    .line 1308
    :cond_3
    if-lt p1, v5, :cond_7

    iget-object v0, p0, Ljgb;->e:Ljgb$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljgb;->e:Ljgb$b;

    iget-object v0, v0, Ljgb$b;->a:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_7

    .line 1309
    :cond_4
    invoke-direct {p0, v5, p3, p4, p5}, Ljgb;->a(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 1310
    if-nez v0, :cond_6

    .line 1311
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    .restart local p2    # "sharedContext":Ljgb$b;
    :cond_5
    sget-object p2, Ljgb;->c:Ljgb$b;

    goto :goto_0

    .line 1315
    .end local p2    # "sharedContext":Ljgb$b;
    :cond_6
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p2, v0, v1}, Ljgb;->a(Ljgb$b;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 1316
    const-string/jumbo v2, "eglCreateContext"

    invoke-static {v2}, Ljgb;->a(Ljava/lang/String;)V

    .line 1317
    new-instance v2, Ljgb$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljgb$a;-><init>(Landroid/opengl/EGLConfig;B)V

    iput-object v2, p0, Ljgb;->d:Ljgb$a;

    .line 1318
    new-instance v0, Ljgb$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljgb$b;-><init>(Landroid/opengl/EGLContext;B)V

    iput-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 1319
    const/4 v0, 0x2

    iput v0, p0, Ljgb;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :cond_7
    :goto_1
    iget-object v0, p0, Ljgb;->e:Ljgb$b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljgb;->e:Ljgb$b;

    iget-object v0, v0, Ljgb$b;->a:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_b

    .line 1336
    :cond_8
    invoke-direct {p0, v6, p3, p4, p5}, Ljgb;->a(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 1337
    if-nez v0, :cond_a

    .line 1338
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :catch_0
    move-exception v0

    if-eqz p5, :cond_7

    .line 1322
    invoke-direct {p0, v5, p3, p4, v4}, Ljgb;->a(IZIZ)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 1323
    if-nez v0, :cond_9

    .line 1324
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_9
    invoke-direct {p0, p2, v0, v5}, Ljgb;->a(Ljgb$b;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 1328
    const-string/jumbo v2, "eglCreateContext"

    invoke-static {v2}, Ljgb;->a(Ljava/lang/String;)V

    .line 1329
    new-instance v2, Ljgb$a;

    invoke-direct {v2, v0, v4}, Ljgb$a;-><init>(Landroid/opengl/EGLConfig;B)V

    iput-object v2, p0, Ljgb;->d:Ljgb$a;

    .line 1330
    new-instance v0, Ljgb$b;

    invoke-direct {v0, v1, v4}, Ljgb$b;-><init>(Landroid/opengl/EGLContext;B)V

    iput-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 1331
    iput v5, p0, Ljgb;->b:I

    goto :goto_1

    .line 1341
    :cond_a
    invoke-direct {p0, p2, v0, v6}, Ljgb;->a(Ljgb$b;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 1342
    const-string/jumbo v2, "eglCreateContext"

    invoke-static {v2}, Ljgb;->a(Ljava/lang/String;)V

    .line 1343
    new-instance v2, Ljgb$a;

    invoke-direct {v2, v0, v4}, Ljgb$a;-><init>(Landroid/opengl/EGLConfig;B)V

    iput-object v2, p0, Ljgb;->d:Ljgb$a;

    .line 1344
    new-instance v0, Ljgb$b;

    invoke-direct {v0, v1, v4}, Ljgb$b;-><init>(Landroid/opengl/EGLContext;B)V

    iput-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 1345
    iput v6, p0, Ljgb;->b:I

    .line 1348
    :cond_b
    new-array v0, v6, [I

    .line 1349
    iget-object v1, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Ljgb;->e:Ljgb$b;

    iget-object v2, v2, Ljgb$b;->a:Landroid/opengl/EGLContext;

    const/16 v3, 0x3098

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "EGLContext created, client version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1351
    invoke-virtual {p0}, Ljgb;->e()V

    .line 166
    return-void
.end method

.method private a(IZIZ)Landroid/opengl/EGLConfig;
    .locals 9
    .param p1, "version"    # I
    .param p2, "hasDepthBuffer"    # Z
    .param p3, "stencilBits"    # I
    .param p4, "isRecordable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 516
    const/4 v6, 0x4

    .line 517
    .local v6, "renderableType":I
    const/4 v7, 0x3

    if-lt p1, v7, :cond_0

    .line 518
    const/16 v6, 0x44

    .line 520
    :cond_0
    const/16 v7, 0x11

    new-array v0, v7, [I

    const/4 v7, 0x0

    const/16 v8, 0x3040

    aput v8, v0, v7

    const/4 v7, 0x1

    aput v6, v0, v7

    const/4 v7, 0x2

    const/16 v8, 0x3024

    aput v8, v0, v7

    const/4 v7, 0x3

    const/16 v8, 0x8

    aput v8, v0, v7

    const/4 v7, 0x4

    const/16 v8, 0x3023

    aput v8, v0, v7

    const/4 v7, 0x5

    const/16 v8, 0x8

    aput v8, v0, v7

    const/4 v7, 0x6

    const/16 v8, 0x3022

    aput v8, v0, v7

    const/4 v7, 0x7

    const/16 v8, 0x8

    aput v8, v0, v7

    const/16 v7, 0x8

    const/16 v8, 0x3021

    aput v8, v0, v7

    const/16 v7, 0x9

    const/16 v8, 0x8

    aput v8, v0, v7

    const/16 v7, 0xa

    const/16 v8, 0x3038

    aput v8, v0, v7

    const/16 v7, 0xb

    const/16 v8, 0x3038

    aput v8, v0, v7

    const/16 v7, 0xc

    const/16 v8, 0x3038

    aput v8, v0, v7

    const/16 v7, 0xd

    const/16 v8, 0x3038

    aput v8, v0, v7

    const/16 v7, 0xe

    const/16 v8, 0x3038

    aput v8, v0, v7

    const/16 v7, 0xf

    const/16 v8, 0x3038

    aput v8, v0, v7

    const/16 v7, 0x10

    const/16 v8, 0x3038

    aput v8, v0, v7

    .line 533
    .local v0, "attribList":[I
    const/16 v4, 0xa

    .line 534
    .local v4, "offset":I
    if-lez p3, :cond_1

    .line 535
    const/16 v7, 0xa

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x3026

    aput v8, v0, v7

    .line 536
    const/16 v7, 0xb

    add-int/lit8 v4, v4, 0x1

    aput p3, v0, v7

    :cond_1
    move v5, v4

    .line 538
    .end local v4    # "offset":I
    .local v5, "offset":I
    if-eqz p2, :cond_2

    .line 539
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    const/16 v7, 0x3025

    aput v7, v0, v5

    .line 540
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    const/16 v7, 0x10

    aput v7, v0, v4

    .line 542
    :cond_2
    if-eqz p4, :cond_3

    .line 2291
    const/16 v7, 0x12

    invoke-static {v7}, Ljgf;->a(I)Z

    move-result v7

    .line 542
    if-eqz v7, :cond_3

    .line 543
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    const/16 v7, 0x3142

    aput v7, v0, v5

    .line 544
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    const/4 v7, 0x1

    aput v7, v0, v4

    :cond_3
    move v4, v5

    .line 546
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_4

    .line 547
    const/16 v7, 0x3038

    aput v7, v0, v2

    .line 546
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 549
    :cond_4
    invoke-direct {p0, v0}, Ljgb;->a([I)Landroid/opengl/EGLConfig;

    move-result-object v1

    .line 550
    .local v1, "config":Landroid/opengl/EGLConfig;
    if-nez v1, :cond_7

    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    .line 551
    if-eqz p4, :cond_7

    .line 554
    const/16 v2, 0xa

    :goto_1
    const/16 v7, 0x10

    if-ge v2, v7, :cond_6

    .line 555
    aget v7, v0, v2

    const/16 v8, 0x3142

    if-ne v7, v8, :cond_5

    .line 556
    move v3, v2

    .local v3, "j":I
    :goto_2
    const/16 v7, 0x11

    if-ge v3, v7, :cond_6

    .line 557
    const/16 v7, 0x3038

    aput v7, v0, v3

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 554
    .end local v3    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 562
    :cond_6
    invoke-direct {p0, v0}, Ljgb;->a([I)Landroid/opengl/EGLConfig;

    move-result-object v1

    .line 565
    :cond_7
    if-nez v1, :cond_8

    .line 566
    const-string/jumbo v7, "EGLBase14"

    const-string/jumbo v8, "try to fallback to RGB565"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v7, 0x3

    const/4 v8, 0x5

    aput v8, v0, v7

    .line 568
    const/4 v7, 0x5

    const/4 v8, 0x6

    aput v8, v0, v7

    .line 569
    const/4 v7, 0x7

    const/4 v8, 0x5

    aput v8, v0, v7

    .line 570
    invoke-direct {p0, v0}, Ljgb;->a([I)Landroid/opengl/EGLConfig;

    move-result-object v1

    .line 572
    :cond_8
    return-object v1
.end method

.method private a([I)Landroid/opengl/EGLConfig;
    .locals 8
    .param p1, "attribList"    # [I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 576
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 577
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v5, [I

    .line 578
    .local v6, "numConfigs":[I
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    move-object v1, p1

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    const/4 v0, 0x0

    .line 581
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v3, v2

    goto :goto_0
.end method

.method private a(Ljgb$b;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 5
    .param p1, "sharedContext"    # Ljgb$b;
    .param p2, "config"    # Landroid/opengl/EGLConfig;
    .param p3, "version"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 402
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/16 v2, 0x3098

    aput v2, v0, v4

    const/4 v2, 0x1

    aput p3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 406
    .local v0, "attrib_list":[I
    iget-object v2, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    iget-object v3, p1, Ljgb$b;->a:Landroid/opengl/EGLContext;

    invoke-static {v2, p2, v3, v0, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 408
    .local v1, "context":Landroid/opengl/EGLContext;
    return-object v1
.end method

.method static synthetic a(Ljgb;II)Landroid/opengl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Ljgb;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljgb;->b(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljgb;Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Ljgb;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljgb;->b(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 511
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_0
    return-void
.end method

.method private a(Landroid/opengl/EGLSurface;)Z
    .locals 5
    .param p1, "surface"    # Landroid/opengl/EGLSurface;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 363
    if-eqz p1, :cond_0

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v2, :cond_2

    .line 364
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 365
    .local v0, "error":I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_1

    .line 366
    const-string/jumbo v2, "EGLBase14"

    const-string/jumbo v3, "makeCurrent:returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v0    # "error":I
    :cond_1
    :goto_0
    return v1

    .line 371
    :cond_2
    iget-object v2, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Ljgb;->e:Ljgb$b;

    iget-object v3, v3, Ljgb$b;->a:Landroid/opengl/EGLContext;

    invoke-static {v2, p1, p1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 372
    const-string/jumbo v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "eglMakeCurrent"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ljgb;Landroid/opengl/EGLSurface;)Z
    .locals 1
    .param p0, "x0"    # Ljgb;
    .param p1, "x1"    # Landroid/opengl/EGLSurface;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljgb;->a(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ljgb;Landroid/opengl/EGLSurface;)I
    .locals 4
    .param p0, "x0"    # Ljgb;
    .param p1, "x1"    # Landroid/opengl/EGLSurface;

    .prologue
    const/4 v3, 0x0

    .line 44
    .line 5430
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    const/16 v1, 0x3057

    iget-object v2, p0, Ljgb;->h:[I

    invoke-static {v0, p1, v1, v2, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result v0

    .line 5431
    if-nez v0, :cond_0

    iget-object v0, p0, Ljgb;->h:[I

    aput v3, v0, v3

    .line 5432
    :cond_0
    iget-object v0, p0, Ljgb;->h:[I

    aget v0, v0, v3

    .line 44
    return v0
.end method

.method private final b(II)Landroid/opengl/EGLSurface;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 476
    const/4 v3, 0x5

    new-array v2, v3, [I

    const/16 v3, 0x3057

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x3056

    aput v4, v2, v3

    const/4 v3, 0x3

    aput p2, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x3038

    aput v4, v2, v3

    .line 481
    .local v2, "surfaceAttribs":[I
    const/4 v1, 0x0

    .line 483
    .local v1, "result":Landroid/opengl/EGLSurface;
    :try_start_0
    iget-object v3, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Ljgb;->d:Ljgb$a;

    iget-object v4, v4, Ljgb$a;->a:Landroid/opengl/EGLConfig;

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 484
    const-string/jumbo v3, "eglCreatePbufferSurface"

    invoke-static {v3}, Ljgb;->a(Ljava/lang/String;)V

    .line 485
    if-nez v1, :cond_0

    .line 486
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "surface was null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "EGLBase14"

    const-string/jumbo v4, "createOffscreenSurface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-object v1

    .line 490
    :catch_1
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "EGLBase14"

    const-string/jumbo v4, "createOffscreenSurface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final b(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 7
    .param p1, "nativeWindow"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 449
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/16 v4, 0x3038

    aput v4, v3, v5

    .line 454
    .local v3, "surfaceAttribs":[I
    :try_start_0
    iget-object v4, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Ljgb;->d:Ljgb$a;

    iget-object v5, v5, Ljgb$a;->a:Landroid/opengl/EGLConfig;

    const/4 v6, 0x0

    invoke-static {v4, v5, p1, v3, v6}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 455
    .local v2, "result":Landroid/opengl/EGLSurface;
    if-eqz v2, :cond_0

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v2, v4, :cond_2

    .line 456
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 457
    .local v1, "error":I
    const/16 v4, 0x300b

    if-ne v1, v4, :cond_1

    .line 458
    const-string/jumbo v4, "EGLBase14"

    const-string/jumbo v5, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "createWindowSurface failed error="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v1    # "error":I
    .end local v2    # "result":Landroid/opengl/EGLSurface;
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EGLBase14"

    const-string/jumbo v5, "eglCreateWindowSurface"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "result":Landroid/opengl/EGLSurface;
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Ljgb;->a(Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    return-object v2
.end method

.method static synthetic c(Ljgb;Landroid/opengl/EGLSurface;)I
    .locals 4
    .param p0, "x0"    # Ljgb;
    .param p1, "x1"    # Landroid/opengl/EGLSurface;

    .prologue
    const/4 v3, 0x1

    .line 44
    .line 5436
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    const/16 v1, 0x3056

    iget-object v2, p0, Ljgb;->h:[I

    invoke-static {v0, p1, v1, v2, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result v0

    .line 5437
    if-nez v0, :cond_0

    iget-object v0, p0, Ljgb;->h:[I

    const/4 v1, 0x0

    aput v1, v0, v3

    .line 5438
    :cond_0
    iget-object v0, p0, Ljgb;->h:[I

    aget v0, v0, v3

    .line 44
    return v0
.end method

.method static synthetic d(Ljgb;Landroid/opengl/EGLSurface;)I
    .locals 1
    .param p0, "x0"    # Ljgb;
    .param p1, "x1"    # Landroid/opengl/EGLSurface;

    .prologue
    .line 44
    .line 6380
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6381
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 6383
    :goto_0
    return v0

    .line 6385
    :cond_0
    const/16 v0, 0x3000

    .line 44
    goto :goto_0
.end method

.method static synthetic e(Ljgb;Landroid/opengl/EGLSurface;)V
    .locals 4
    .param p0, "x0"    # Ljgb;
    .param p1, "x1"    # Landroid/opengl/EGLSurface;

    .prologue
    .line 44
    .line 6499
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p1, v0, :cond_0

    .line 6500
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 6502
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 6504
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 44
    return-void
.end method


# virtual methods
.method public final synthetic a(II)Ljfz$c;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 43
    .line 3207
    new-instance v0, Ljgb$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Ljgb$c;-><init>(Ljgb;IIB)V

    .line 3208
    invoke-virtual {v0}, Ljgb$c;->a()V

    .line 43
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljfz$c;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 43
    .line 4192
    new-instance v0, Ljgb$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljgb$c;-><init>(Ljgb;Ljava/lang/Object;B)V

    .line 4193
    invoke-virtual {v0}, Ljgb$c;->a()V

    .line 43
    return-object v0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_3

    .line 1414
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Ljgb;->e:Ljgb$b;

    iget-object v1, v1, Ljgb$b;->a:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    const-string/jumbo v0, "destroyContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "display:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljgb;->e:Ljgb$b;

    iget-object v2, v2, Ljgb$b;->a:Landroid/opengl/EGLContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const-string/jumbo v0, "EGLBase14"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "eglDestroyContext:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_0
    sget-object v0, Ljgb;->c:Ljgb$b;

    iput-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 1419
    iget-object v0, p0, Ljgb;->g:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_2

    .line 1420
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Ljgb;->g:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1421
    const-string/jumbo v0, "destroyContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "display:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljgb;->g:Landroid/opengl/EGLContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const-string/jumbo v0, "EGLBase14"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "eglDestroyContext:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Ljgb;->g:Landroid/opengl/EGLContext;

    .line 176
    :cond_2
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 177
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 179
    :cond_3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    .line 180
    sget-object v0, Ljgb;->c:Ljgb$b;

    iput-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 181
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Ljgb;->b:I

    return v0
.end method

.method public final bridge synthetic c()Ljfz$b;
    .locals 1

    .prologue
    .line 43
    .line 5238
    iget-object v0, p0, Ljgb;->e:Ljgb$b;

    .line 43
    return-object v0
.end method

.method public final bridge synthetic d()Ljfz$a;
    .locals 1

    .prologue
    .line 43
    .line 4247
    iget-object v0, p0, Ljgb;->d:Ljgb$a;

    .line 43
    return-object v0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Ljgb;->f:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string/jumbo v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makeDefault"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    return-void
.end method

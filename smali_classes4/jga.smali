.class public final Ljga;
.super Ljfz;
.source "EGLBase10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljga$c;,
        Ljga$d;,
        Ljga$a;,
        Ljga$b;
    }
.end annotation


# static fields
.field private static final f:Ljga$b;


# instance fields
.field b:I

.field private c:Ljavax/microedition/khronos/egl/EGL10;

.field private d:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private e:Ljga$a;

.field private g:Ljga$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljga$b;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljga$b;-><init>(Ljavax/microedition/khronos/egl/EGLContext;B)V

    sput-object v0, Ljga;->f:Ljga$b;

    return-void
.end method

.method public constructor <init>(ILjga$b;ZIZ)V
    .locals 8
    .param p1, "maxClientVersion"    # I
    .param p2, "sharedContext"    # Ljga$b;
    .param p3, "withDepthBuffer"    # Z
    .param p4, "stencilBits"    # I
    .param p5, "isRecordable"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 243
    invoke-direct {p0}, Ljfz;-><init>()V

    .line 48
    iput-object v3, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 49
    iput-object v3, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 50
    iput-object v3, p0, Ljga;->e:Ljga$a;

    .line 51
    iput v4, p0, Ljga;->b:I

    .line 54
    sget-object v0, Ljga;->f:Ljga$b;

    iput-object v0, p0, Ljga;->g:Ljga$b;

    .line 1367
    if-eqz p2, :cond_0

    .line 1368
    .end local p2    # "sharedContext":Ljga$b;
    :goto_0
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_2

    .line 1369
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 1370
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1371
    iget-object v0, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_1

    .line 1372
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1367
    .restart local p2    # "sharedContext":Ljga$b;
    :cond_0
    sget-object p2, Ljga;->f:Ljga$b;

    goto :goto_0

    .line 1375
    .end local p2    # "sharedContext":Ljga$b;
    :cond_1
    new-array v0, v4, [I

    .line 1376
    iget-object v1, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1377
    iput-object v3, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1378
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :cond_2
    if-lt p1, v7, :cond_3

    .line 1384
    invoke-direct {p0, v7, p3, p4, p5}, Ljga;->a(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1385
    if-eqz v0, :cond_3

    .line 1386
    invoke-direct {p0, p2, v0, v7}, Ljga;->a(Ljga$b;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 1387
    iget-object v2, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_3

    .line 1389
    new-instance v2, Ljga$a;

    invoke-direct {v2, v0, v5}, Ljga$a;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;B)V

    iput-object v2, p0, Ljga;->e:Ljga$a;

    .line 1390
    new-instance v0, Ljga$b;

    invoke-direct {v0, v1, v5}, Ljga$b;-><init>(Ljavax/microedition/khronos/egl/EGLContext;B)V

    iput-object v0, p0, Ljga;->g:Ljga$b;

    .line 1391
    iput v7, p0, Ljga;->b:I

    .line 1396
    :cond_3
    if-lt p1, v4, :cond_6

    iget-object v0, p0, Ljga;->g:Ljga$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljga;->g:Ljga$b;

    iget-object v0, v0, Ljga$b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_6

    .line 1397
    :cond_4
    invoke-direct {p0, v4, p3, p4, p5}, Ljga;->a(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1398
    if-nez v0, :cond_5

    .line 1399
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_5
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p2, v0, v1}, Ljga;->a(Ljga$b;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 1404
    const-string/jumbo v2, "eglCreateContext"

    invoke-direct {p0, v2}, Ljga;->a(Ljava/lang/String;)V

    .line 1405
    new-instance v2, Ljga$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljga$a;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;B)V

    iput-object v2, p0, Ljga;->e:Ljga$a;

    .line 1406
    new-instance v0, Ljga$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljga$b;-><init>(Ljavax/microedition/khronos/egl/EGLContext;B)V

    iput-object v0, p0, Ljga;->g:Ljga$b;

    .line 1407
    const/4 v0, 0x2

    iput v0, p0, Ljga;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :cond_6
    :goto_1
    iget-object v0, p0, Ljga;->g:Ljga$b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljga;->g:Ljga$b;

    iget-object v0, v0, Ljga$b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_a

    .line 1424
    :cond_7
    invoke-direct {p0, v6, p3, p4, p5}, Ljga;->a(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1425
    if-nez v0, :cond_9

    .line 1426
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :catch_0
    move-exception v0

    if-eqz p5, :cond_6

    .line 1410
    invoke-direct {p0, v4, p3, p4, v5}, Ljga;->a(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1411
    if-nez v0, :cond_8

    .line 1412
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_8
    invoke-direct {p0, p2, v0, v4}, Ljga;->a(Ljga$b;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 1416
    const-string/jumbo v2, "eglCreateContext"

    invoke-direct {p0, v2}, Ljga;->a(Ljava/lang/String;)V

    .line 1417
    new-instance v2, Ljga$a;

    invoke-direct {v2, v0, v5}, Ljga$a;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;B)V

    iput-object v2, p0, Ljga;->e:Ljga$a;

    .line 1418
    new-instance v0, Ljga$b;

    invoke-direct {v0, v1, v5}, Ljga$b;-><init>(Ljavax/microedition/khronos/egl/EGLContext;B)V

    iput-object v0, p0, Ljga;->g:Ljga$b;

    .line 1419
    iput v4, p0, Ljga;->b:I

    goto :goto_1

    .line 1429
    :cond_9
    invoke-direct {p0, p2, v0, v6}, Ljga;->a(Ljga$b;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 1430
    const-string/jumbo v2, "eglCreateContext"

    invoke-direct {p0, v2}, Ljga;->a(Ljava/lang/String;)V

    .line 1431
    new-instance v2, Ljga$a;

    invoke-direct {v2, v0, v5}, Ljga$a;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;B)V

    iput-object v2, p0, Ljga;->e:Ljga$a;

    .line 1432
    new-instance v0, Ljga$b;

    invoke-direct {v0, v1, v5}, Ljga$b;-><init>(Ljavax/microedition/khronos/egl/EGLContext;B)V

    iput-object v0, p0, Ljga;->g:Ljga$b;

    .line 1433
    iput v6, p0, Ljga;->b:I

    .line 1436
    :cond_a
    new-array v0, v6, [I

    .line 1437
    iget-object v1, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Ljga;->g:Ljga$b;

    iget-object v3, v3, Ljga$b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v4, 0x3098

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "EGLContext created, client version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1439
    invoke-virtual {p0}, Ljga;->e()V

    .line 246
    return-void
.end method

.method private final a(IZIZ)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .param p1, "version"    # I
    .param p2, "hasDepthBuffer"    # Z
    .param p3, "stencilBits"    # I
    .param p4, "isRecordable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 606
    const/4 v6, 0x4

    .line 607
    .local v6, "renderableType":I
    const/4 v7, 0x3

    if-lt p1, v7, :cond_0

    .line 608
    const/16 v6, 0x44

    .line 611
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

    .line 624
    .local v0, "attribList":[I
    const/16 v4, 0xa

    .line 625
    .local v4, "offset":I
    if-lez p3, :cond_1

    .line 626
    const/16 v7, 0xa

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x3026

    aput v8, v0, v7

    .line 627
    const/16 v7, 0xb

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x8

    aput v8, v0, v7

    :cond_1
    move v5, v4

    .line 629
    .end local v4    # "offset":I
    .local v5, "offset":I
    if-eqz p2, :cond_2

    .line 630
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    const/16 v7, 0x3025

    aput v7, v0, v5

    .line 631
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    const/16 v7, 0x10

    aput v7, v0, v4

    .line 633
    :cond_2
    if-eqz p4, :cond_3

    .line 2291
    const/16 v7, 0x12

    invoke-static {v7}, Ljgf;->a(I)Z

    move-result v7

    .line 633
    if-eqz v7, :cond_3

    .line 634
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    const/16 v7, 0x3142

    aput v7, v0, v5

    .line 635
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    const/4 v7, 0x1

    aput v7, v0, v4

    :cond_3
    move v4, v5

    .line 637
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_4

    .line 638
    const/16 v7, 0x3038

    aput v7, v0, v2

    .line 637
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 640
    :cond_4
    invoke-direct {p0, v0}, Ljga;->a([I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 641
    .local v1, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v1, :cond_7

    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    .line 642
    if-eqz p4, :cond_7

    .line 645
    const/16 v2, 0xa

    :goto_1
    const/16 v7, 0x10

    if-ge v2, v7, :cond_6

    .line 646
    aget v7, v0, v2

    const/16 v8, 0x3142

    if-ne v7, v8, :cond_5

    .line 647
    move v3, v2

    .local v3, "j":I
    :goto_2
    const/16 v7, 0x11

    if-ge v3, v7, :cond_6

    .line 648
    const/16 v7, 0x3038

    aput v7, v0, v3

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 645
    .end local v3    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 653
    :cond_6
    invoke-direct {p0, v0}, Ljga;->a([I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 656
    :cond_7
    if-nez v1, :cond_8

    .line 657
    const-string/jumbo v7, "EGLBase10"

    const-string/jumbo v8, "try to fallback to RGB565"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v7, 0x3

    const/4 v8, 0x5

    aput v8, v0, v7

    .line 659
    const/4 v7, 0x5

    const/4 v8, 0x6

    aput v8, v0, v7

    .line 660
    const/4 v7, 0x7

    const/4 v8, 0x5

    aput v8, v0, v7

    .line 661
    invoke-direct {p0, v0}, Ljga;->a([I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 663
    :cond_8
    return-object v1
.end method

.method private a([I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .param p1, "attribList"    # [I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 667
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 668
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 669
    .local v5, "numConfigs":[I
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    const/4 v0, 0x0

    .line 672
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, v3, v0

    goto :goto_0
.end method

.method private final a(Ljga$b;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5
    .param p1, "sharedContext"    # Ljga$b;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "version"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 497
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3098

    aput v3, v0, v2

    const/4 v2, 0x1

    aput p3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 501
    .local v0, "attrib_list":[I
    iget-object v2, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p1, Ljga$b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, p2, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 503
    .local v1, "context":Ljavax/microedition/khronos/egl/EGLContext;
    return-object v1
.end method

.method static synthetic a(Ljga;II)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Ljga;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljga;->b(II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljga;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Ljga;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljga;->b(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 600
    iget-object v1, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 601
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 603
    :cond_0
    return-void
.end method

.method private final a(Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 5
    .param p1, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 451
    if-eqz p1, :cond_0

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v2, :cond_2

    .line 452
    :cond_0
    iget-object v2, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 453
    .local v0, "error":I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_1

    .line 454
    const-string/jumbo v2, "EGLBase10"

    const-string/jumbo v3, "makeCurrent:EGL_BAD_NATIVE_WINDOW"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v0    # "error":I
    :cond_1
    :goto_0
    return v1

    .line 459
    :cond_2
    iget-object v2, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Ljga;->g:Ljga$b;

    iget-object v4, v4, Ljga$b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, p1, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 460
    const-string/jumbo v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "eglMakeCurrent"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1
    .param p0, "x0"    # Ljga;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljga;->a(Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 5
    .param p0, "x0"    # Ljga;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    const/4 v4, 0x0

    .line 44
    .line 5517
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 5518
    iget-object v1, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3057

    invoke-interface {v1, v2, p1, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v1

    .line 5519
    if-nez v1, :cond_0

    aput v4, v0, v4

    .line 5520
    :cond_0
    aget v0, v0, v4

    .line 44
    return v0
.end method

.method private final b(II)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 565
    const/4 v3, 0x5

    new-array v2, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    aput v4, v2, v3

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

    .line 570
    .local v2, "surfaceAttribs":[I
    iget-object v3, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    .line 571
    const/4 v1, 0x0

    .line 573
    .local v1, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    :try_start_0
    iget-object v3, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Ljga;->e:Ljga$a;

    iget-object v5, v5, Ljga$a;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v4, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 574
    const-string/jumbo v3, "eglCreatePbufferSurface"

    invoke-direct {p0, v3}, Ljga;->a(Ljava/lang/String;)V

    .line 575
    if-nez v1, :cond_0

    .line 576
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "surface was null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "EGLBase10"

    const-string/jumbo v4, "createOffscreenSurface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-object v1

    .line 580
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "EGLBase10"

    const-string/jumbo v4, "createOffscreenSurface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final b(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 7
    .param p1, "nativeWindow"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 538
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    const/16 v5, 0x3038

    aput v5, v3, v4

    .line 543
    .local v3, "surfaceAttribs":[I
    :try_start_0
    iget-object v4, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Ljga;->e:Ljga$a;

    iget-object v6, v6, Ljga$a;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v4, v5, v6, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    .line 544
    .local v2, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    if-eqz v2, :cond_0

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v4, :cond_2

    .line 545
    :cond_0
    iget-object v4, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 546
    .local v1, "error":I
    const/16 v4, 0x300b

    if-ne v1, v4, :cond_1

    .line 547
    const-string/jumbo v4, "EGLBase10"

    const-string/jumbo v5, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
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

    .line 553
    .end local v1    # "error":I
    .end local v2    # "result":Ljavax/microedition/khronos/egl/EGLSurface;
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EGLBase10"

    const-string/jumbo v5, "eglCreateWindowSurface"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "result":Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Ljga;->a(Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    return-object v2
.end method

.method static synthetic c(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 5
    .param p0, "x0"    # Ljga;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    const/4 v4, 0x0

    .line 44
    .line 5524
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 5525
    iget-object v1, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3056

    invoke-interface {v1, v2, p1, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v1

    .line 5526
    if-nez v1, :cond_0

    aput v4, v0, v4

    .line 5527
    :cond_0
    aget v0, v0, v4

    .line 44
    return v0
.end method

.method static synthetic d(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I
    .locals 2
    .param p0, "x0"    # Ljga;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 44
    .line 6468
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6469
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 6471
    :goto_0
    return v0

    .line 6473
    :cond_0
    const/16 v0, 0x3000

    .line 44
    goto :goto_0
.end method

.method static synthetic e(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 5
    .param p0, "x0"    # Ljga;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 44
    .line 6589
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, v0, :cond_0

    .line 6590
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 6592
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 6594
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

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

    .line 44
    .line 3289
    new-instance v0, Ljga$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Ljga$c;-><init>(Ljga;IIB)V

    .line 3290
    invoke-virtual {v0}, Ljga$c;->a()V

    .line 44
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljfz$c;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    .line 4274
    new-instance v0, Ljga$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljga$c;-><init>(Ljga;Ljava/lang/Object;B)V

    .line 4275
    invoke-virtual {v0}, Ljga$c;->a()V

    .line 44
    return-object v0
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 254
    .line 1509
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ljga;->g:Ljga$b;

    iget-object v2, v2, Ljga$b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1510
    const-string/jumbo v0, "destroyContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "display:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljga;->g:Ljga$b;

    iget-object v2, v2, Ljga$b;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const-string/jumbo v0, "EGLBase10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "eglDestroyContext:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_0
    sget-object v0, Ljga;->f:Ljga$b;

    iput-object v0, p0, Ljga;->g:Ljga$b;

    .line 255
    sget-object v0, Ljga;->f:Ljga$b;

    iput-object v0, p0, Ljga;->g:Ljga$b;

    .line 256
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_1

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 259
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 260
    iput-object v5, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 261
    iput-object v5, p0, Ljga;->e:Ljga$a;

    .line 262
    iput-object v5, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Ljga;->b:I

    return v0
.end method

.method public final bridge synthetic c()Ljfz$b;
    .locals 1

    .prologue
    .line 44
    .line 5302
    iget-object v0, p0, Ljga;->g:Ljga$b;

    .line 44
    return-object v0
.end method

.method public final bridge synthetic d()Ljfz$a;
    .locals 1

    .prologue
    .line 44
    .line 4311
    iget-object v0, p0, Ljga;->e:Ljga$a;

    .line 44
    return-object v0
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 320
    iget-object v0, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljga;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const-string/jumbo v0, "EGLBase10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makeDefault:eglMakeCurrent:err="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljga;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    return-void
.end method

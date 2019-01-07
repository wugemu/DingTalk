.class public Lcom/hisign/facedetectv1small/LiveDetect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisign/facedetectv1small/LiveDetect$a;,
        Lcom/hisign/facedetectv1small/LiveDetect$b;,
        Lcom/hisign/facedetectv1small/LiveDetect$c;,
        Lcom/hisign/facedetectv1small/LiveDetect$d;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static c:Z

.field private static d:Lcom/hisign/facedetectv1small/LiveDetect$a;

.field private static final e:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/hisign/facedetectv1small/LiveDetect;->c:Z

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->e:Ljava/util/concurrent/Semaphore;

    :try_start_0
    invoke-static {}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FaceLiveDetect_x86"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisign/facedetectv1small/LiveDetect;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u8bf7\u51dd\u89c6\u5c4f\u5e55"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u8bf7\u6447\u5934"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u8bf7\u70b9\u5934"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u8bf7\u5411\u5de6\u8f6c"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u8bf7\u5411\u53f3\u8f6c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "3D\u68c0\u6d4b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u7a7a\u95f2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u5f20\u5634"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u4e0a\u4e0b\u52a8\u624b\u673a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u7728\u773c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->a:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u65e0\u9519\u8bef"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u6d3b\u4f53"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u975e\u6d3b\u4f53"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u65e0\u4eba\u8138"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u591a\u5f20\u4eba\u8138"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u8bf7\u9760\u8fd1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u8bf7\u8fdc\u79bb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u68c0\u6d4b\u9519\u8bef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u6d3b\u4f53\u9519\u8bef"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u52a8\u4f5c\u5f02\u5e38"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u80a4\u8272\u5f02\u5e38"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "3D\u7ed3\u6784\u5f02\u5e38"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u8fde\u7eed\u6027\u5f02\u5e38"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->b:[Ljava/lang/String;

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "FaceLiveDetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/hisign/facedetectv1small/LiveDetect;->c:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->d:Lcom/hisign/facedetectv1small/LiveDetect$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$a;

    invoke-direct {v0}, Lcom/hisign/facedetectv1small/LiveDetect$a;-><init>()V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->d:Lcom/hisign/facedetectv1small/LiveDetect$a;

    const/4 v1, 0x1

    .line 1000
    iput-boolean v1, v0, Lcom/hisign/facedetectv1small/LiveDetect$a;->a:Z

    .line 0
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->d:Lcom/hisign/facedetectv1small/LiveDetect$a;

    invoke-virtual {v0}, Lcom/hisign/facedetectv1small/LiveDetect$a;->start()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Lcom/hisign/facedetectv1small/LiveDetect$d;)I
    .locals 2

    const/4 v0, -0x8

    invoke-virtual {p0}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v1

    :try_start_0
    invoke-static {v1}, Lcom/hisign/facedetectv1small/LiveDetect;->jniLive3DDetectWorking(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->d:Lcom/hisign/facedetectv1small/LiveDetect$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->d:Lcom/hisign/facedetectv1small/LiveDetect$a;

    .line 2000
    iput-boolean v1, v0, Lcom/hisign/facedetectv1small/LiveDetect$a;->a:Z

    .line 0
    :try_start_0
    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect;->c()I

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->d:Lcom/hisign/facedetectv1small/LiveDetect$a;

    invoke-virtual {v0}, Lcom/hisign/facedetectv1small/LiveDetect$a;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->d:Lcom/hisign/facedetectv1small/LiveDetect$a;

    :cond_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect;->e:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private static native jniLive3DDetectWorking(I)I
.end method

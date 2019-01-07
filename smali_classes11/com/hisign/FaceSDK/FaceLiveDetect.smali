.class public Lcom/hisign/FaceSDK/FaceLiveDetect;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static c:Lcom/hisign/FaceSDK/FaceLiveDetect;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u8bf7\u9760\u8fd1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u8bf7\u8fdc\u79bb"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u68c0\u6d4b\u901a\u8fc7"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u68c0\u6d4b\u672a\u901a\u8fc7"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u68c0\u6d4b\u5931\u8d25"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u6ca1\u6709\u627e\u5230\u4eba\u8138"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u6ca1\u6709\u627e\u5230\u773c\u775b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u8bf7\u70b9\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u8bf7\u4fdd\u8bc1\u4ec5\u4e00\u4eba\u4f7f\u7528"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u8bf7\u6447\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u8bf7\u770b\u5c4f\u5e55"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->a:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "move closer"

    aput-object v1, v0, v3

    const-string/jumbo v1, "move farther"

    aput-object v1, v0, v4

    const-string/jumbo v1, "live"

    aput-object v1, v0, v5

    const-string/jumbo v1, "not live"

    aput-object v1, v0, v6

    const-string/jumbo v1, "failure"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "no face"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "no eye"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "wait..."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "not single face"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Shake Head"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Open/Close Mouth"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->b:[Ljava/lang/String;

    sput-boolean v3, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    sput-boolean v3, Lcom/hisign/FaceSDK/FaceLiveDetect;->e:Z

    :try_start_0
    invoke-static {}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FaceLiveDetect_x86"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "FaceLiveDetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized THIDInitLiveDetectChannel(I[I)I
.end method

.method public static synchronized native declared-synchronized THIDSetMethod(I[II)I
.end method

.method public static a(II[I)I
    .locals 6

    const/16 v0, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sget-boolean v3, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v3, Lcom/hisign/FaceSDK/FaceLiveDetect;->e:Z

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    aput v5, v2, v1

    const/16 v3, 0x50

    aput v3, v2, v5

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    invoke-static {v2}, Lcom/hisign/FaceSDK/FaceLiveDetect;->jniInitLiveDetect([I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    sput-boolean v5, Lcom/hisign/FaceSDK/FaceLiveDetect;->e:Z

    :cond_2
    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect;->a()I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x1
        0x78
        0x280
        0x1e0
        0x50
        0x3c
        0x46
        0x6
        0x2
        0x5
        0x3c
        0x64
    .end array-data
.end method

.method public static a([B[I)I
    .locals 1

    sget-boolean v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->e:Z

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x12

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/hisign/FaceSDK/FaceLiveDetect;->jniLiveDetectProcess([B[I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect;->c()I

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/hisign/FaceSDK/FaceLiveDetect;
    .locals 3

    const-class v1, Lcom/hisign/FaceSDK/FaceLiveDetect;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->c:Lcom/hisign/FaceSDK/FaceLiveDetect;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisign/FaceSDK/FaceLiveDetect;

    invoke-direct {v0}, Lcom/hisign/FaceSDK/FaceLiveDetect;-><init>()V

    sput-object v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->c:Lcom/hisign/FaceSDK/FaceLiveDetect;

    :cond_0
    sget-boolean v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lhxt;->a(Landroid/content/Context;)Lhxt;

    move-result-object v0

    const-string/jumbo v2, "FaceLiveDetect_x86"

    invoke-virtual {v0, v2}, Lhxt;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    :cond_1
    :goto_0
    sget-object v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->c:Lcom/hisign/FaceSDK/FaceLiveDetect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    invoke-static {p0}, Lhxt;->a(Landroid/content/Context;)Lhxt;

    move-result-object v0

    const-string/jumbo v2, "FaceLiveDetect"

    invoke-virtual {v0, v2}, Lhxt;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "x86"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "x86"

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v3, :cond_2

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v5, v3, v2

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "x86"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static b()I
    .locals 2

    sget-boolean v0, Lcom/hisign/FaceSDK/FaceLiveDetect;->d:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect;->b()I

    invoke-static {}, Lcom/hisign/FaceSDK/FaceLiveDetect;->jniUninitLiveDetect()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/hisign/FaceSDK/FaceLiveDetect;->e:Z

    goto :goto_0
.end method

.method private static synchronized native declared-synchronized jniInitLiveDetect([I)I
.end method

.method public static native jniLiveDetectProcess([B[I)I
.end method

.method public static synchronized native declared-synchronized jniUninitLiveDetect()I
.end method

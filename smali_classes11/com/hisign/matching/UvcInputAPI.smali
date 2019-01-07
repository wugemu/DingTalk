.class public Lcom/hisign/matching/UvcInputAPI;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisign/matching/UvcInputAPI;->a:Z

    :try_start_0
    const-string/jumbo v0, "inputuvc_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisign/matching/UvcInputAPI;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synchronized native declared-synchronized UVCYuvFlip(II[B)I
.end method

.method public static synchronized native declared-synchronized UVCYuvSPMirror(II[BII)I
.end method

.method public static synchronized native declared-synchronized UVCYuvtoRgb(II[B[B)I
.end method

.method public static a(II[B)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/hisign/matching/UvcInputAPI;->UVCYuvFlip(II[B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static a(II[BII)I
    .locals 2

    const/16 v0, 0x5a

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v0, v1}, Lcom/hisign/matching/UvcInputAPI;->UVCYuvSPMirror(II[BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    goto :goto_0
.end method
